module testbench();
  reg a,b;
  
  wire c_out,sum;
  
  half_adder add_half(.a(a),.b(b),.sum(sum),.c_out(c_out));
  
  initial begin
    assign a = 0; assign b = 0;
    display;
    assign a = 0; assign b = 1;
	display;
    assign a = 1; assign b = 0;
	display;
    assign a=1; assign b=1;
    display;
  end
  
  task display;
    #1 $display("a:%0h, b:%0h, c_out:%0h, sum:%0h",a,b,c_out,sum);
  endtask
                      
endmodule
