BITS 64

; prologue
push    rbp
mov     rbp, rsp
push    rax
push    rbx
push    rcx
push    rdx

; string: "milk outside a bag of milk."
; code
push    0x0a2e6b6c
push    0x696d2066
push    0x6f206761
push    0x62206120
push    0x65646973
push    0x74756f20
push    0x6b6c696d

mov    rdi, 1      ; stdout
mov    rsi, rsp    ; buffer
mov    rdx, 56     ; length
mov    rax, 1      ; sys_write
syscall

; epilogue
add    rsp, 56
pop    rdx
pop    rcx
pop    rbx
pop    rax
leave
ret
