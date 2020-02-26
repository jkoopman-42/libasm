section.text:
	global _ft_strlen

	_ft_strlen:
		xor			rax, rax
		loop:
			cmp		BYTE [rdi + rax], 0
			jz		stop
			inc		rax
			jmp		loop
		stop:
			ret