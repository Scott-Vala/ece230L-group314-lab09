module demux_8bit(
    input [7:0] data,
    input [1:0] sel,
    output reg [7:0] out0,
    output reg [7:0] out1,
    output reg [7:0] out2,
    output reg [7:0] out3
);

    always @(*) 
    begin
        out0 = 8'b0;
        out1 = 8'b0;
        out2 = 8'b0;
        out3 = 8'b0;
        case(sel)
            2'b00: out0 = data;
            2'b01: out1 = data;
            2'b10: out2 = data;
            2'b11: out3 = data;
        endcase
    end

endmodule

module demux_1bit(
    input store,
    input [1:0] sel,
    output reg store0,
    output reg store1,
    output reg store2,
    output reg store3
);

    always @(*) 
    begin
        store0 = 1'b0;
        store1 = 1'b0;
        store2 = 1'b0;
        store3 = 1'b0;
        case(sel)
            2'b00: store0 = store;
            2'b01: store1 = store;
            2'b10: store2 = store;
            2'b11: store3 = store;
        endcase
    end

endmodule