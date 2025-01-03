module ring_counter_tb();
reg clk;
reg rst;
wire [4:0] ring_out;
ring_counter uut(.clk(clk),.rst(rst),.ring_out(ring_out));
initial 
begin
clk = 0;
forever #5 clk = ~clk;    
end
initial 
begin
rst = 1;      
#10;      
rst = 0;       
#100;       
$stop;  
end   
initial 
begin   
$monitor("time: %t, Ring: %b", $time, ring_out);
end
endmodule

