module tb_fa; 
reg a,b,cin; 
wire sum,cout; 
integer i = 0; 
initial begin 
repeat(8) begin 
a = i[2]; b=i[1]; cin=i[0]; 
#10; 
i=i+1; 
end 
end 
fa fa1(a,b,cin,sum,cout); 
endmodule 
