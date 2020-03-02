section.text:
global _ft_write

_ft_write:
	mov			rax, 0x2000004		; Syscall ID for write
	syscall
	jnc			return
	mov			rax, -1

return:
		ret