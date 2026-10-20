BITS 32

; prologue
push	ebp
mov	 ebp, esp
push	eax
push	ebx
push	ecx
push	edx

; string: "milk outside a bag of milk."
; code
push	0x0a2e6b6c
push	0x696d2066
push	0x6f206761
push	0x62206120
push	0x65646973
push	0x74756f20
push	0x6b6c696d

mov	ebx, 1       ; stdout
mov	ecx, esp     ; buffer
mov	edx, 28      ; length
mov	eax, 4       ; sys_write
int	0x80		

; epilogue
add	esp, 28
pop	edx
pop	ecx
pop	ebx
pop	eax
leave
ret
