module points(
    input clk,
    input [9:0] counter_x,
    input [9:0] counter_y,
    output draw_points
);

    parameter START_Y_LOC = 15;
    parameter END_Y_LOC = 20;

    parameter P2_GAPE = 103;

    parameter START_X_LOC_P1_1 = 4;
    parameter END_X_LOC_P1_1 = 9;

    parameter START_X_LOC_P1_2 = 9;
    parameter END_X_LOC_P1_2 = 14;

    parameter START_X_LOC_P1_3 = 14;
    parameter END_X_LOC_P1_3 = 19;

    parameter START_X_LOC_P1_4 = 19;
    parameter END_X_LOC_P1_4 = 24;

    parameter START_X_LOC_P1_5 = 24;
    parameter END_X_LOC_P1_5 = 29;

    parameter START_X_LOC_P2_1 = 29 + P2_GAPE;
    parameter END_X_LOC_P2_1 = 34 + P2_GAPE;

    parameter START_X_LOC_P2_2 = 34 + P2_GAPE;
    parameter END_X_LOC_P2_2 = 39 + P2_GAPE;

    parameter START_X_LOC_P2_3 = 39 + P2_GAPE;
    parameter END_X_LOC_P2_3 = 44 + P2_GAPE;

    parameter START_X_LOC_P2_4 = 44 + P2_GAPE;
    parameter END_X_LOC_P2_4 = 49 + P2_GAPE;

    parameter START_X_LOC_P2_5 = 49 + P2_GAPE;
    parameter END_X_LOC_P2_5 = 54 + P2_GAPE;

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