section.text:
global _ft_strcpy

; int ft_strcpy(rdi (dest), rsi (src))
_ft_strcpy:
	xor		rcx, rcx				; Empty register
	xor		rdx, rdx
	mov		rax, 0x0
	cmp		rsi, 0x0				; If dest nullbyte, return
	jz		return
	cmp		rdi, 0x0				; If src nullbyte, return
	jz		return

copy:
	mov		dl, BYTE [rsi + rcx]	; Move byte into last 8 bits of rdx
	mov		BYTE [rdi + rcx], dl	; Move data to dest pointer
	cmp		dl, 0x0					; If null, end of string
	jz		return					; If null, exit
	inc		rcx						; Increment pointer
	jmp		copy					; Restart loop

return:
	mov		rax, rdi				; Return dest pointer
	ret