.ORIG x3000
       LD    R2,TERM   ; Load -9
       LD    R3,ASCII  ; Load ASCII difference	
AGAIN  TRAP  x23       ; Request keyboard input
       ADD   R1,R2,R0  ; Test for terminating
       BRz   EXIT      ; Character
       ADD   R0,R0,R3  ; Change to lowercase
       TRAP  x21       ; Output to the monitor
       BRnzp AGAIN     ; ... and do it again!   
TERM   .FILL xFFC7     ; FFC9 = -9 (negative of ASCII 9)
ASCII  .FILL x0020
EXIT   TRAP  x25       ; Halt
.END
