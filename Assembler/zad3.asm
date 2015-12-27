mov psw,#18h
mov 6,#50
mov r0,6
mov r1,#0fh
mov a,r1
L1:
	mov @r0,a
	inc r0
	dec a
	djnz r1,L1