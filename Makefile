
VERILOG = iverilog
TARGET = 0513.vcd
TEMP = 0513.vpp

$(TARGET) : $(TEMP)
	vvp $(TEMP)

$(TEMP): 0513_tb.v 0513.v
	$(VERILOG) -o $(TEMP) 0513_tb.v 0513.v

clean:
	rm $(TARGET)
