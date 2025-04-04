##
## EPITECH PROJECT, 2025
## Makefile
## File description:
## make
##

SRC = src/function_one.c	\
	src/function_two.c

OBJ	=	$(SRC:.c=.o)

INC = -iquote ./include

MAIN = main.c

CR_TEST = tests/tests_my_function.c

all:	normal

normal:	$(OBJ)
	gcc $(MAIN) $(OBJ) $(INC)
	gcc -o mysh $(MAIN) $(OBJ) $(INC)
	gcc -o my_segfault $(MAIN) $(OBJ) $(INC)

clean:
	$(RM) $(OBJ)

fclean:	clean
	$(RM) a.out
	$(RM) mysh
	$(RM) my_segfault

re:	fclean  all

clean_unit:
	$(RM) *.gcno
	$(RM) *.gcda

fclean_unit:	clean_unit
	$(RM) unit_tests

unit_tests:	fclean
	gcc -o unit_tests $(CR_TEST) $(SRC) $(INC) --coverage -lcriterion

tests_run : fclean_unit unit_tests
	./unit_tests

gcovr_unit:
	gcovr --exclude tests/

.PHONY: all clean fclean re normal
