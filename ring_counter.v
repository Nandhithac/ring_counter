module ring_counter(
input clk,
input rst,
output reg [4:0] ring_out);
always @(posedge clk or posedge rst) 
begin
if (rst) 
begin
ring_out <= 5'b00101;
end
else 
begin
ring_out <= {ring_out[3:0], ring_out[4]};
end
end
endmodule
