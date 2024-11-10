/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none
module comparator(input clk,en,
    input [31:0] x1,
    input [31:0] x2,
    input [31:0] x3,
    input [31:0] x4,
    input [31:0] x5,
    output reg p1,
    output reg p2,
    output reg p3,
    output reg p4,
    output reg p5
);

always @(posedge clk) begin
if (en) begin
    if (x1 > x2 && x1 > x3 && x1 > x4 && x1 > x5) begin
        p1 = 1;
    end else begin
        p1 = 0;
    end

    if (x2 > x1 && x2 > x3 && x2 > x4 && x2 > x5) begin
        p2 = 1;
    end else begin
        p2 = 0;
    end

    if (x3 > x1 && x3 > x2 && x3 > x4 && x3 > x5) begin
        p3 = 1;
    end else begin
        p3 = 0;
    end

    if (x4 > x1 && x4 > x2 && x4 > x3 && x4 > x5) begin
        p4 = 1;
    end else begin
        p4 = 0;
    end

    if (x5 > x1 && x5 > x2 && x5 > x3 && x5 > x4) begin
        p5 = 1;
    end else begin
        p5 = 0;
    end
end
end
endmodule


