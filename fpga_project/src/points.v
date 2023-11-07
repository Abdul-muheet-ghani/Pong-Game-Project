module points(
    input clk,
    input [9:0] counter_x,
    input [9:0] counter_y,
    output draw_points
);

    parameter START_Y_LOC = 15;
    parameter END_Y_LOC = 20;
    parameter START_X_LOC_P1_1 = 3;
    parameter END_X_LOC_P1_1 = 9;

    parameter START_X_LOC_P1_2 = 5;
    parameter END_X_LOC_P1_2 = 11;

    parameter START_X_LOC_P1_3 = 4;
    parameter END_X_LOC_P1_3 = 9;

    parameter START_X_LOC_P1_4 = 4;
    parameter END_X_LOC_P1_4 = 9;

    parameter START_X_LOC_P1_5 = 4;
    parameter END_X_LOC_P1_5 = 9;

    parameter START_X_LOC_P2_1 = 4;
    parameter END_X_LOC_P2_1 = 9;

    parameter START_X_LOC_P2_2 = 4;
    parameter END_X_LOC_P2_2 = 9;

    parameter START_X_LOC_P2_3 = 4;
    parameter END_X_LOC_P2_3 = 9;

    parameter START_X_LOC_P2_4 = 4;
    parameter END_X_LOC_P2_4 = 9;

    parameter START_X_LOC_P2_5 = 4;
    parameter END_X_LOC_P2_5 = 9;

    wire draw_points_p1_1, draw_points_p1_2, draw_points_p1_3, draw_points_p1_4, draw_points_p1_5, draw_points_p2_1, draw_points_p2_2, draw_points_p2_3, draw_points_p2_4, draw_points_p2_5;

    frame #
    (
        .START_Y_LOC(START_Y_LOC),
        .END_Y_LOC(END_Y_LOC),
        .START_X_LOC(START_X_LOC_P1_1),
        .END_X_LOC(END_X_LOC_P1_1)
    )
    point_p1_1 (
        .clk(clk),
        .rst(1'b0),
        .counter_x(counter_x),
        .counter_y(counter_y),
        .draw_frame(draw_points_p1_1)
    );

    frame #
    (
        .START_Y_LOC(START_Y_LOC),
        .END_Y_LOC(END_Y_LOC),
        .START_X_LOC(START_X_LOC_P1_2),
        .END_X_LOC(END_X_LOC_P1_2)
    )
    point_p1_2 (
        .clk(clk),
        .rst(1'b0),
        .counter_x(counter_x),
        .counter_y(counter_y),
        .draw_frame(draw_points_p1_2)
    );

    frame #
    (
        .START_Y_LOC(START_Y_LOC),
        .END_Y_LOC(END_Y_LOC),
        .START_X_LOC(START_X_LOC_P1_3),
        .END_X_LOC(END_X_LOC_P1_3)
    )
    point_p1_3 (
        .clk(clk),
        .rst(1'b0),
        .counter_x(counter_x),
        .counter_y(counter_y),
        .draw_frame(draw_points_p1_3)
    );

    frame #
    (
        .START_Y_LOC(START_Y_LOC),
        .END_Y_LOC(END_Y_LOC),
        .START_X_LOC(START_X_LOC_P1_4),
        .END_X_LOC(END_X_LOC_P1_4)
    )
    point_p1_4 (
        .clk(clk),
        .rst(1'b0),
        .counter_x(counter_x),
        .counter_y(counter_y),
        .draw_frame(draw_points_p1_4)
    );

    frame #
    (
        .START_Y_LOC(START_Y_LOC),
        .END_Y_LOC(END_Y_LOC),
        .START_X_LOC(START_X_LOC_P1_5),
        .END_X_LOC(END_X_LOC_P1_5)
    )
    point_p1_5 (
        .clk(clk),
        .rst(1'b0),
        .counter_x(counter_x),
        .counter_y(counter_y),
        .draw_frame(draw_points_p1_5)
    );

    frame #
    (
        .START_Y_LOC(START_Y_LOC),
        .END_Y_LOC(END_Y_LOC),
        .START_X_LOC(START_X_LOC_P2_1),
        .END_X_LOC(END_X_LOC_P2_1)
    )
    point_p2_1 (
        .clk(clk),
        .rst(1'b0),
        .counter_x(counter_x),
        .counter_y(counter_y),
        .draw_frame(draw_points_p2_1)
    );

    frame #
    (
        .START_Y_LOC(START_Y_LOC),
        .END_Y_LOC(END_Y_LOC),
        .START_X_LOC(START_X_LOC_P2_2),
        .END_X_LOC(END_X_LOC_P2_2)
    )
    point_p2_2 (
        .clk(clk),
        .rst(1'b0),
        .counter_x(counter_x),
        .counter_y(counter_y),
        .draw_frame(draw_points_p2_2)
    );

    frame #
    (
        .START_Y_LOC(START_Y_LOC),
        .END_Y_LOC(END_Y_LOC),
        .START_X_LOC(START_X_LOC_P2_3),
        .END_X_LOC(END_X_LOC_P2_3)
    )
    point_p2_3 (
        .clk(clk),
        .rst(1'b0),
        .counter_x(counter_x),
        .counter_y(counter_y),
        .draw_frame(draw_points_p2_3)
    );

    frame #
    (
        .START_Y_LOC(START_Y_LOC),
        .END_Y_LOC(END_Y_LOC),
        .START_X_LOC(START_X_LOC_P2_4),
        .END_X_LOC(END_X_LOC_P2_4)
    )
    point_p2_4 (
        .clk(clk),
        .rst(1'b0),
        .counter_x(counter_x),
        .counter_y(counter_y),
        .draw_frame(draw_points_p2_4)
    );

    frame #
    (
        .START_Y_LOC(START_Y_LOC),
        .END_Y_LOC(END_Y_LOC),
        .START_X_LOC(START_X_LOC_P2_5),
        .END_X_LOC(END_X_LOC_P2_5)
    )
    point_p2_5 (
        .clk(clk),
        .rst(1'b0),
        .counter_x(counter_x),
        .counter_y(counter_y),
        .draw_frame(draw_points_p2_5)
    );

    assign draw_points = draw_points_p1_1 | draw_points_p1_2 | draw_points_p1_3 | draw_points_p1_4 | draw_points_p1_5 |
                         draw_points_p2_1 | draw_points_p2_2 | draw_points_p2_3 | draw_points_p2_4 | draw_points_p2_5;

endmodule