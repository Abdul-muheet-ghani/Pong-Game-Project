`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2023 12:01:31 AM
// Design Name: 
// Module Name: frame
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module text
#(
    parameter START_Y_LOC = 0,
    parameter END_Y_LOC = 20,
    parameter START_X_LOC = 1,
    parameter END_X_LOC = 160
)
(
    input wire clk,
    input wire rst,
    input wire [9:0] counter_x,
    input wire [9:0] counter_y,
    output reg draw_frame
    );
    
    reg [7:0] counter_x_div;
    reg [7:0] counter_y_div; 
    
    always@ (posedge clk)
    begin
    counter_x_div <= counter_x[9:2];
    counter_y_div <= counter_y[9:2];    
        
        if(counter_y_div == START_Y_LOC)
        begin
            draw_frame <= 0;
        end
        
        else if(counter_y_div == START_Y_LOC + 1 || counter_y_div == END_Y_LOC - 2)
        begin
            if(counter_x_div >= START_X_LOC && counter_x_div <= END_X_LOC - 3)
            begin
                draw_frame <= 1;
            end
            else
            begin
                draw_frame <= 0;
            end
        end
        
     /*   if(counter_y_div >= START_Y_LOC + 2 && counter_y_div <= END_Y_LOC - 3)
        begin
            if((counter_x_div == START_X_LOC) || (counter_x_div == END_X_LOC - 3))
            begin
                draw_frame <= 1;
            end
            else
            begin*/
                if(((counter_x_div >= START_X_LOC + 26 && counter_x_div <= START_X_LOC + 32) ||
                  (counter_x_div >= START_X_LOC + 34 && counter_x_div <= START_X_LOC + 40) ||
                  (counter_x_div >= START_X_LOC + 116 && counter_x_div <= START_X_LOC + 122) ||
                  (counter_x_div >= START_X_LOC + 124 && counter_x_div <= START_X_LOC + 130)) && 
                  (counter_y_div >= START_Y_LOC + 2 && counter_y_div <= END_Y_LOC - 3)
                )
                begin
                    if((counter_x_div == START_X_LOC + 26) || 
                      (((counter_y_div == 2) || (counter_y_div == 6)) && (counter_x_div >= START_X_LOC + 26 && counter_x_div <= START_X_LOC + 32)) || 
                      ((counter_x_div == START_X_LOC + 32) && ((counter_y_div <= 5) && counter_y_div >= 1)) || 
                      (counter_x_div == START_X_LOC + 37) || (counter_x_div == START_X_LOC + 116) ||
                      (((counter_y_div == 2) || (counter_y_div == 6)) && (counter_x_div >= START_X_LOC + 116 && counter_x_div <= START_X_LOC + 122)) ||
                      (((counter_y_div == 2) || (counter_y_div == 6) || (counter_y_div == 10)) && (counter_x_div >= START_X_LOC + 124 && counter_x_div <= START_X_LOC + 130)) ||
                      ((counter_x_div == START_X_LOC + 122) && ((counter_y_div <= 5) && counter_y_div >= 1)) ||
                      ((counter_x_div == START_X_LOC + 130) && ((counter_y_div <= 5) && counter_y_div >= 1)) ||
                      ((counter_x_div == START_X_LOC + 124) && ((counter_y_div <= 10) && counter_y_div >= 6))
                      )
                    begin
                        draw_frame <= 1;
                    end
                    else
                    begin
                        draw_frame <= 0;
                    end
                end
                else
                begin
                    draw_frame <= 0;
                end
            //end
        //end
       /* 
        else
        begin
            draw_frame <= 0;
        end*/
    end   
    
endmodule
