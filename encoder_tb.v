module tb_encoder_4to2();
    logic [3:0] D;
    logic [1:0] Y;

    encoder_4to2 uut (.D(D), .Y(Y));

    initial begin
        $monitor("Input = %b, Output = %b", D, Y);

        D = 4'b0001; #10;
        D = 4'b0010; #10;
        D = 4'b0100; #10;
        D = 4'b1000; #10;
        D = 4'b0000; #10; // Invalid case

        $finish;
    end
endmodule
