##
## EPITECH PROJECT, 2025
## Makefile
## File description:
## make
##

all:		$(NAME)

$(NAME):
	gcc main.c
	gcc -o mysh main.c
	gcc -o my_segfault

clean:
	$(RM) $(OBJ)

fclean:	clean libclean
	$(RM) $(NAME)

re:	fclean  all

.PHONY: all clean fclean re
