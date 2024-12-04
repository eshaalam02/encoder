module encoder_tb;
    reg [7:0]I;
    wire [2:0]O;
    integer i;

encoder tb(I,O);

initial begin
  I = 8'b1; #1;
  for (i=0; i<8;i=i+1) 
    begin
    $display (" I = %b  ->  O = %b", I, O );
    I = I<<1; #1;
    end
  end
endmodule
