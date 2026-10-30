module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    wire [7:0] d0, d1, d2, d3;
    wire s0, s1, s2, s3;
    wire [7:0] m0, m1, m2, m3;

    demux_8bit data_demux (
        .data(data),
        .sel(addr),
        .out0(d0),
        .out1(d1),
        .out2(d2),
        .out3(d3)
    );

    demux_1bit store_demux (
        .store(store),
        .sel(addr),
        .store0(s0),
        .store1(s1),
        .store2(s2),
        .store3(s3)
    );

    byte_memory byte0 (.data(d0), .store(s0), .memory(m0));
    byte_memory byte1 (.data(d1), .store(s1), .memory(m1));
    byte_memory byte2 (.data(d2), .store(s2), .memory(m2));
    byte_memory byte3 (.data(d3), .store(s3), .memory(m3));

    multiplexer out_mux (
        .A(m0),
        .B(m1),
        .C(m2),
        .D(m3),
        .sel(addr),
        .out(memory)
    );

endmodule