section.text:
global _ft_read

_ft_read:
	mov			rax, 0x2000003		; Syscall ID for read
	syscall
	jnc			return
	mov			rax, -1

return:
		ret