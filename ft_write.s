; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_write.s                                         :+:    :+:             ;
;                                                      +:+                     ;
;    By: jkoopman <jkoopman@student.codam.nl>         +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/03/05 17:58:47 by jkoopman       #+#    #+#                 ;
;    Updated: 2020/03/05 17:58:47 by jkoopman      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

section.text:
global _ft_write

_ft_write:
	mov			rax, 0x2000004		; Syscall ID for write
	syscall
	jnc			return
	mov			rax, -1

return:
		ret