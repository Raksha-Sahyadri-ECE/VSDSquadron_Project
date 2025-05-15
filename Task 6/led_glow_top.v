module top (
    input clk,
    input uartrx,
    output [2:0] rgb
);

wire [7:0] rxbyte;
wire received;

reg [2:0] rgb_reg = 3'b000; 
assign rgb = rgb_reg;

uart_rx uart_inst (
    .clk(clk),
    .rx(uartrx),
    .rxbyte(rxbyte),
    .received(received)
);

always @(posedge clk) begin
    if (received) begin
        case (rgb_reg)
            3'b000: rgb_reg <= 3'b001;
            3'b001: rgb_reg <= 3'b011;
            3'b011: rgb_reg <= 3'b111;
            3'b111: rgb_reg <= 3'b000; 
            default: rgb_reg <= 3'b000;
        endcase
    end
end

endmodule
