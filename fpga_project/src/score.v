module score(
    input clk,
    input [5:0] location_y_p1,
    input [5:0] loc_ball_y,
    input [5:0] loc_ball_x,
    output reg [5:0] led
);

    always @(posedge clk)
    begin
        if(loc_ball_x == 3)
        begin
            led = led + 1;
        end
    end

endmodule