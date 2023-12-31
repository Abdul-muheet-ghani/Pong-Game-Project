module uart_rx #(
    parameter DELAY_FRAMES = 217 // 27,000,000 (27Mhz) / 115200 Baud rate
)
(
    input clk25MHz,
    input uart_rx,
    //input [31:0] speed_counter1, speed_counter2,
    output reg [7:0]dataIn
);

localparam HALF_DELAY_WAIT = (DELAY_FRAMES / 2);

reg [3:0] rxState = 0;
reg [12:0] rxCounter = 0;
reg [1:0] cnt = 0;
//reg [7:0] dataIn = 0;
reg [2:0] rxBitNumber = 0;
reg byteReady = 0;

localparam RX_STATE_IDLE = 0;
localparam RX_STATE_START_BIT = 1;
localparam RX_STATE_READ_WAIT = 2;
localparam RX_STATE_READ = 3;
localparam RX_STATE_STOP_BIT = 5;
localparam WAIT_STATE_AFTER_RECEIVE = 6;

always @(posedge clk25MHz) begin
    case (rxState)
        RX_STATE_IDLE: begin
            if (uart_rx == 0) begin
                rxState <= RX_STATE_START_BIT;
                rxCounter <= 1;
                rxBitNumber <= 0;
                byteReady <= 0;
            end
        end 
        RX_STATE_START_BIT: begin
            if (rxCounter == HALF_DELAY_WAIT) begin
                rxState <= RX_STATE_READ_WAIT;
                rxCounter <= 1;
            end else 
                rxCounter <= rxCounter + 1;
        end
        RX_STATE_READ_WAIT: begin
            rxCounter <= rxCounter + 1;
            if ((rxCounter + 1) == DELAY_FRAMES) begin
                rxState <= RX_STATE_READ;
            end
        end
        RX_STATE_READ: begin
            rxCounter <= 1;
            dataIn <= {uart_rx, dataIn[7:1]};
            rxBitNumber <= rxBitNumber + 1;
            if (rxBitNumber == 3'b111)
                rxState <= RX_STATE_STOP_BIT;
            else
                rxState <= RX_STATE_READ_WAIT;
        end
        RX_STATE_STOP_BIT: begin
            rxCounter <= rxCounter + 1;
            if ((rxCounter + 1) == DELAY_FRAMES) begin
                rxState <= WAIT_STATE_AFTER_RECEIVE;
                rxCounter <= 0;
                byteReady <= 1;
            end
        end
        WAIT_STATE_AFTER_RECEIVE: begin
            if(cnt == 1) begin
                rxState <= RX_STATE_IDLE;
                dataIn <= 8'd0;
                cnt   <= 2'd0;
                    end
            else begin
                cnt <= cnt + 1;
                rxState <= WAIT_STATE_AFTER_RECEIVE;
            end
        end
    endcase
end

endmodule