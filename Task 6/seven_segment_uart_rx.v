module uart_rx (
    input clk,
    input rx,
    output reg [7:0] rxbyte = 0,
    output reg received = 0
);

    reg [3:0] bitindex = 0;
    reg [7:0] data = 0;
    reg [12:0] clkcount = 0;
    reg busy = 0;
    reg rx_sync_0 = 1, rx_sync_1 = 1;

    parameter BAUD_TICKS = 1250;  

    always @(posedge clk) begin
        rx_sync_0 <= rx;
        rx_sync_1 <= rx_sync_0;
    end

    always @(posedge clk) begin
        if (!busy) begin
            received <= 0;
            if (rx_sync_1 == 0) begin 
                busy <= 1;
                clkcount <= BAUD_TICKS / 2;
                bitindex <= 0;
            end
        end else begin
            if (clkcount == 0) begin
                clkcount <= BAUD_TICKS;
                if (bitindex < 8) begin
                    data[bitindex] <= rx_sync_1;
                    bitindex <= bitindex + 1;
                end else if (bitindex == 8) begin
                    rxbyte <= data;
                    received <= 1;
                    busy <= 0;
                end
            end else begin
                clkcount <= clkcount - 1;
            end
        end
    end

endmodule
