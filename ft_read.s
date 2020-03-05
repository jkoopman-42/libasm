; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_read.s                                          :+:    :+:             ;
;                                                      +:+                     ;
;    By: jkoopman <jkoopman@student.codam.nl>         +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/03/05 17:58:33 by jkoopman       #+#    #+#                 ;
;    Updated: 2020/03/05 17:58:34 by jkoopman      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

section.text:
global _ft_read

_ft_read:
	mov			rax, 0x2000003		; Syscall ID for read
	syscall
	jnc			return
	mov			rax, -1

return:
		ret