	AREA PROGRAM, CODE,READONLY
	ENTRY

MAIN
	LDR R0,VALUE;loading the address of value
	LDR R1,[R0];loading value into register R1
	LDR R2,[R0];again loading value into R2;
	AND R2,#0x000F0000;masking the value in R2 to get 4th nibble
	AND R1,#0x0000000F;masking the value in R1 to get 0th nibble
	LSL R1,#16;shifting the value in R1 to 4th nibble for addition
	ADD R1,R2;addtion of R1 and R2;
	LDR R0,RESULT;loading the address of result to R0
	STR R1,[R0]; storing the content of R1 to Address present in R0
	
VALUE DCD 0X40000004;	
RESULT DCD 0X4000000c;
	END
	
	
	