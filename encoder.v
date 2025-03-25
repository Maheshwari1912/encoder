//////////////////////////////////////////////////////////////////////////////////
// Author Name: Maheshwari Ratthapuram
// Date: 25.03.2025
// Design Name: encoder
// Description: converts multiple active input signals into a binary-coded output. 
///////////////////////////////////////////////////////////////////////////////

module encoder_4to2 (
    input logic [3:0] D,
    output logic [1:0] Y
);

    always_comb begin
        case (D)
            4'b0001: Y = 2'b00;
            4'b0010: Y = 2'b01;
            4'b0100: Y = 2'b10;
            4'b1000: Y = 2'b11;
            default: Y = 2'bxx;  // Error case
        endcase
    end

endmodule
