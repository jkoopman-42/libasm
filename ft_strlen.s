; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strlen.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: jkoopman <jkoopman@student.codam.nl>         +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/03/05 17:58:19 by jkoopman       #+#    #+#                 ;
;    Updated: 2020/03/05 17:58:20 by jkoopman      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

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