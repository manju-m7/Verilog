module twos_priority_tb; 
reg [7:0]a; wire [7:0]b; 
initial begin 
repeat(10) begin 
a=$random; 
#10; 
end 
end 
twos_priority p1(a, b); 
endmodule 