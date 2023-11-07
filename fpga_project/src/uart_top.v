module uart_top
(
    input  clk25MHz,
    input  uart_rx,
    input  button1,
    //input [31:0] speed_counter1, speed_counter2,
    output uart_tx,
    output reg btn1,
    output reg btn2,
    output reg btn3,
    output reg btn4,
    output reg rst,
    output [5:0] led
);

    wire [7:0] data_recieve;

    uart_rx u_uart_rx
    (
        .clk25MHz(clk25MHz),
        .uart_rx(uart_rx),
        .dataIn(data_recieve)
    );

    uart_tx u_uart_tx
    (
        .clk(clk25MHz),
        .uart_tx(uart_tx),
        .btn1(button1),
        .dataIn(data_recieve),
        .led(led)
    );

    always@ (*)
    begin
        if(data_recieve == "a") btn1 = 1;
        else btn1 = 0;

        if(data_recieve == "q") btn2 = 1;
        else btn2 = 0;

        if(data_recieve == "l") btn3 = 1;
        else btn3 = 0;

        if(data_recieve == "p") btn4 = 1;
        else btn4 = 0;

        if(data_recieve == "b") rst = 1;
        else rst = 0;
    end
endmodule
