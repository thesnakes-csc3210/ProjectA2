@second program Register = val2+9+val3-val1
.section .data
val1:.word 6
val2:.word 11
val3:.word 16
result:.word 0
.section .text
.globl _start
_start:
	ldr r1,=val1
	ldr r1,[r1]
	ldr r2,=val2
	ldr r2,[r2]
	ldr r3,=val3
	ldr r3,[r3]
	add r2,r2,#9
	add r2,r2,r3
	sub r2,r2,r1

	ldr r4,=result
	str r2,[r4]

	mov r7, #1
	svc #0
.end
