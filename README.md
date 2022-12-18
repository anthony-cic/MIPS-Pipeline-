# MIPS-Pipeline-

The project includes a simple 5 state mips pipeline that supports binary instructions for load word and add operations. 
Ex: lw $2, 00($3) 
    add $2 $4 $6 

The pipeline is setup as follows 

Stage 1: Instruction Fetch (IF)  - Initializes instruction memory (im.v) and begins the program counter (pc.v). 
-Forwards data through the IF/ID pipeline 
Stage 2: Instruction Decode (ID) - Implementation of the CPU, Reg file, and 32 bit extender. 
-Forwards data through the ID/EXE pipeline 
Stage 3: Execution (EXE) - Implementation of the ALU for artithmetic. 
-Forwards data through the EXE/MEM pipeline 
Stage 4: Memory (MEM) - Holds the files for our data memory. 
-Forwards data through the MEM/WB pipeline
Stage 5: Write Back (WB) - Forwards data to the regfile (writes back) for the destination register of an instruction. 


