module tb_csa; 
reg [3:0]x,y,z; 
reg cin,co; 
wire [4:0]sum; 
wire cout; 
integer i=0; 
initial begin 
        cin=0; 
        co=0; 
    repeat(9) begin 
        x=$random; 
y=$random; 
z=$random; 
#10; 
i=i+1; 
end 
end 
csa csa1(x,y,z,cin,co,sum,cout); 
endmodule 