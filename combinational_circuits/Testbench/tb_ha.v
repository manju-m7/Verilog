module tb_ha; 
reg a,b; 
wire s,c; 
initial begin 
a=1'b0; b=1'b0; 
#10; 
b=1'b1; 
#10; 
a=1'b1; b=1'b0; 
#10; 
b=1'b1; 
#10; 
end 
ha ha1(a,b,s,c); 
endmodule 
