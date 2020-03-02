section.text:
global _ft_strlen

; int ft_strlen(rdi)
_ft_strlen:
	xor			rax, rax				; Empty RAX

count:
	cmp		BYTE [rdi + rax], 0x0	; Cmp char to \0
	jz		stop					; If nullbyte, yeet out
	inc		rax						; Increment RAX
	jmp		count					; Go again

stop:
	ret