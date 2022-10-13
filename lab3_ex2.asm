;=================================================
; Name: Titan Lam   
; Email: tlam038@ucr.edu
; 
; Lab: lab 3, ex 2
; Lab section: 023
; TA: 
; 
;=================================================

.orig x3000
LD R1,DATA_PTR  ;load the memory address of array into R1
LD R2,DEC_10    ;put #10 into R2 as counter

DO_WHILE_LOOP
    GETC    ;read characters into R0
    OUT     ;print R0 onto console as ASCII
    STR R0,R1, #0   ;stores into memory location from R1
    ADD R1,R1, #1   ;increment to next memory address
    ADD R2,R2, #-1   ;decrease counter array entries
BRp DO_WHILE_LOOP
END_WHILE_LOOP

LD R0,newline
OUT
LEA R0,ARRAY
PUTS

HALT


;Data
DATA_PTR .FILL ARRAY ;DATA_PTR gets the beginning of the ARRAY
ARRAY .BLKW #10      ;allocate 10 memory locations for ARRAY
DEC_10 .FILL #10     ;counter to tranverse array
newline .FILL x0A
.END