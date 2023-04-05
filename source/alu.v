// This file will run the Airthmetic Logic Unit of the processor.
// This contains various modules which can be used as required and take the required amount of
// information from the processor and output the computed value in the output wire which is used by the processor.
// All the functions here are synchronized at the clk signal.

// This the top module of ALU which will inturn divide the signal among various modules
// present in the ALU scheme and then select the required output generated from each of the ALU modules and give it back to
// the processor for further usage.
module alu_top(clk,reset,ir,instr_ID,data_in,data_out);
    input clk,reset; // Clock and reset signals for the working of processor
    input [31:0] ir,instr_ID; // Instruction Register and Instruction ID for working of ALU
    output [31:0] data_in; // Register for data input
    output [31:0] data_out;

    reg [31:0] check;
    wire [4:0] r0,r1,r2;
    assign r1 = ir[25:21];
    assign r2 = ir[20:16];
    assign r0 = ir[15:11];
    
    add m1(instr_ID,check[r0],check[r1],check[r2]);

    always @(*) begin
        check <= data_in;
    end

    assign data_out <= check;
endmodule

module add(instr_ID,out,a,b);
    input [31:0] instr_ID,a,b;
    output [31:0] out;

    reg [31:0] out_reg;

    always @(*) begin
        if(instr_ID == 1) begin
            out_reg <= a + b;
        end
    end

    assign out = out_reg;
endmodule

module sub(instr_ID,out,a,b);
    input [31:0] instr_ID,a,b;
    output [31:0] out;

    reg [31:0] out_reg;

    always @(*) begin
        if(instr_ID == 2) begin
            out_reg <= a - b;
        end
    end

    assign out = out_reg;
endmodule

module addu(instr_ID,out,a,b);
    input [31:0] instr_ID,a,b;
    output [31:0] out;

    reg [31:0] out_reg;

    always @(*) begin
        if(instr_ID == 3) begin
            out_reg <= a + b;
        end
    end

    assign out = out_reg;
endmodule

module subu(instr_ID,out,a,b);
    input [31:0] instr_ID,a,b;
    output [31:0] out;

    reg [31:0] out_reg;

    always @(*) begin
        if(instr_ID == 4) begin
            out_reg <= a - b;
        end
    end

    assign out = out_reg;
endmodule

module addi(instr_ID,out,a,b);
    input [31:0] instr_ID,a,b;
    output [31:0] out;

    reg [31:0] out_reg;

    always @(*) begin
        if(instr_ID == 5) begin
            out_reg <= a + b;
        end
    end

    assign out = out_reg;
endmodule

module addiu(instr_ID,out,a,b);
    input [31:0] instr_ID,a,b;
    output [31:0] out;

    reg [31:0] out_reg;

    always @(*) begin
        if(instr_ID == 6) begin
            out_reg <= a + b;
        end
    end

    assign out = out_reg;
endmodule

module and(instr_ID,out,a,b);
    input [31:0] instr_ID,a,b;
    output [31:0] out;

    reg [31:0] out_reg;

    always @(*) begin
        if(instr_ID == 7) begin
            out_reg <= a & b;
        end
    end

    assign out = out_reg;
endmodule

module or(instr_ID,out,a,b);
    input [31:0] instr_ID,a,b;
    output [31:0] out;

    reg [31:0] out_reg;

    always @(*) begin
        if(instr_ID == 8) begin
            out_reg <= a | b;
        end
    end

    assign out = out_reg;
endmodule

module andi(instr_ID,out,a,b);
    input [31:0] instr_ID,a,b;
    output [31:0] out;

    reg [31:0] out_reg;

    always @(*) begin
        if(instr_ID == 9) begin
            out_reg <= a & b;
        end
    end

    assign out = out_reg;
endmodule

module ori(instr_ID,out,a,b);
    input [31:0] instr_ID,a,b;
    output [31:0] out;

    reg [31:0] out_reg;

    always @(*) begin
        if(instr_ID == 10) begin
            out_reg <= a | b;
        end
    end

    assign out = out_reg;
endmodule

module sll(instr_ID,out,a,b);
    input [31:0] instr_ID,a,b;
    output [31:0] out;

    reg [31:0] out_reg;

    always @(*) begin
        if(instr_ID == 11) begin
            out_reg <= a << b;
        end
    end

    assign out = out_reg;
endmodule

module srl(instr_ID,out,a,b);
    input [31:0] instr_ID,a,b;
    output [31:0] out;

    reg [31:0] out_reg;

    always @(*) begin
        if(instr_ID == 12) begin
            out_reg <= a >> b;
        end
    end

    assign out = out_reg;
endmodule
