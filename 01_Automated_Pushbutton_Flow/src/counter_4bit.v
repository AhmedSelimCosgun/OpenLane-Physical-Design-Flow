module counter_4bit (
    input wire clk,
    input wire rst,
    output reg [3:0] count
);

    // Trigger on the rising edge of the clock or the rising edge of reset
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 4'b0000; // Reset the counter to 0
        end else begin
            count <= count + 1; // Increment by 1
        end
    end

endmodule
