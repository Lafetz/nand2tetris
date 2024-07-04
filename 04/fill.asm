@RESET
0;JMP

(LOOP)
@24576
D=A
@current
D=D-M
@RESET
D;JEQ

//KBD check
@KBD
D=M
@value
M=1
@FILL
D;JEQ 
@value
M=-1
@FILL
0;JMP

(FILL)
@value
D=M
@current
A=M-1
M=D
@INC
0;JMP



(INC)
@current
D=M
@current
M=D+1
@LOOP 
0;JMP


(RESET)
@16384
D=A
@current
M=D
@LOOP 
0;JMP