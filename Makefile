##
## EPITECH PROJECT, 2025
## Makefile
## File description:
## make
##

SRC = main.c

OBJ	=	$(SRC:.c=.o)

all:	normal

normal:	$(OBJ)
	gcc $(OBJ)
	gcc -o mysh $(OBJ)
	gcc -o my_segfault $(OBJ)

clean:
	rm *.o

fclean:	clean
	rm a.out
	rm mysh
	rm my_segfault

re:	fclean  all

.PHONY: all clean fclean re normal
