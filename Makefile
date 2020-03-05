# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: jkoopman <jkoopman@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2020/02/21 13:22:34 by jkoopman       #+#    #+#                 #
#    Updated: 2020/03/05 16:40:56 by jkoopman      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

COM_COLOR   = \033[1;31m
OBJ_COLOR   = \033[0;36m
OK_COLOR    = \033[0;32m
ERROR_COLOR = \033[0;31m
WARN_COLOR  = \033[0;33m
NO_COLOR    = \033[m
OK_STRING    = "[OK]"
ERROR_STRING = "[ERROR]"
WARN_STRING  = "[WARNING]"
COM_STRING   = "Compiling"

NAME = libasm.a
NAME_LIB = asm
NAME_TEST = tester
NASM_FLAGS = -f macho64
CC_FLAGS = -Wall -Werror -Wextra

SOURCES =	ft_read.s \
			ft_write.s \
			ft_strlen.s \
			ft_strcpy.s \
			ft_strcmp.s \
			ft_strdup.s

BONUS_SOURCES =

TEST_SOURCES = tester.c

OBJECTS = $(SOURCES:.s=.o)
BONUS_OBJECTS = $(BONUS_SOURCES:.s=.o)

all: $(NAME)

$(NAME): $(OBJECTS)
	@printf "%-57b" "$(COM_COLOR)Building library: $(NO_COLOR)"
	@ar rc $(NAME) $(OBJECTS)
	@ranlib $(NAME);
	@printf "%b" "$(OK_COLOR)$(OK_STRING)\n$(NO_COLOR)"

bonus: $(OBJECTS)
	@printf "$(WARN_COLOR)!!! WITH BONUS !!! $(NO_COLOR)\n"
	@printf "%-57b" "$(COM_COLOR)Building library: $(NO_COLOR)"
	@ar rc $(NAME) $(OBJECTS) $(BONUS_OBJECTS)
	@ranlib $(NAME);
	@printf "%b" "$(OK_COLOR)$(OK_STRING)\n$(NO_COLOR)"

%.o: %.s
	@nasm $(NASM_FLAGS) $< -o $@; \
        RESULT=$$?; \
        if [ $$RESULT -ne 0 ]; then \
            printf "%b %b" "$(COM_COLOR)$(COM_STRING)$(OBJ_COLOR) $@" \
				"$(ERROR_COLOR)$(ERROR_STRING)$(NO_COLOR)\n"; \
		else  \
            printf "%-60b %b" "$(COM_COLOR)$(COM_STRING)$(OBJ_COLOR) $(@F)" \
				"$(OK_COLOR)$(OK_STRING)$(NO_COLOR)\n"; \
        fi; \
        exit $$RESULT

clean:
	@printf "%-57b" "$(COM_COLOR)Cleaning up object files: $(NO_COLOR)"
	@$(RM) $(OBJECTS) $(BONUS_OBJECTS) $(NAME_TEST)
	@printf "%b" "$(OK_COLOR)$(OK_STRING)\n$(NO_COLOR)"

fclean: clean
	@printf "%-57b" "$(COM_COLOR)Cleaning up $(NAME): $(NO_COLOR)"
	@$(RM) $(NAME)
	@printf "%b" "$(OK_COLOR)$(OK_STRING)\n$(NO_COLOR)"

tester: all
	@printf "$(WARN_COLOR)!!! TESTER !!! $(NO_COLOR)\n"
	@$(CC) $(CC_FLAGS) -L. -l $(NAME_LIB) $(TEST_SOURCES) -o $(NAME_TEST)
	@./tester

re: fclean all

.PHONY: all clean fclean re bonus
