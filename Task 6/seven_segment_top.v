module top (
    input clk,
    input uartrx,
    output reg [6:0] seg
);

wire [7:0] rxbyte;
wire received;

reg [3:0] digit = 0; 

uart_rx uart_inst (
    .clk(clk),
    .rx(uartrx),
    .rxbyte(rxbyte),
    .received(received)
);

function [6:0] digit_to_seg;
    input [3:0] d;
    begin
        case (d)
            0: digit_to_seg = 7'b1111110; // 0
            1: digit_to_seg = 7'b0110000; // 1
            2: digit_to_seg = 7'b1101101; // 2
            3: digit_to_seg = 7'b1111001; // 3
            4: digit_to_seg = 7'b0110011; // 4
            5: digit_to_seg = 7'b1011011; // 5
            6: digit_to_seg = 7'b1011111; // 6
            7: digit_to_seg = 7'b1110000; // 7
            8: digit_to_seg = 7'b1111111; // 8
            9: digit_to_seg = 7'b1111011; // 9
            default: digit_to_seg = 7'b0000000; // off
        endcase
    end
endfunction

always @(posedge clk) begin
    if (received) begin
        if (digit == 9)
            digit <= 0;
        else
            digit <= digit + 1;
    end
    seg <= digit_to_seg(digit);
end

endmodule
