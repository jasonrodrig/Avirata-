// testbech code
module mem_tb();
reg clk,rst;
reg wr,rd;
reg [7:0] Datain;
reg [3:0] addr;
wire[7:0] Dataout;

mem m1(
        .clk(clk),
        .rst(rst),
        .wr(wr),
        .rd(rd),
        .addr(addr),
        .Datain(Datain),
        .Dataout(Dataout));
 
initial 
begin
    clk=0;
end  
always #5 clk=~clk;
        integer i;
        initial begin
        rst=1;
        #10 rst=0;
            for (i=0;i<11;i=i+1)
            begin
            rd=0;
            wr=1;
            addr=addr+1;
              Datain[addr]=i;
            
              $display("rst:%1d \t wr: %1d \t rd: %1d \t Address: %1d \t Data_in: %1d Data_out: %1d",rst,wr,rd,addr,Datain, Dataout);
                
                #10 wr=0;
                 rd=1;
              $display("rst:%1d \t wr: %1d \t rd: %1d \t Address: %1d \t Data_in: %1d Data_out: %1d",rst,wr,rd,addr,Datain, Dataout);          
  
        end
                               
       end
endmodule

//













