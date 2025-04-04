/*
** EPITECH PROJECT, 2025
** test_my_funcgtion
** File description:
** desc
*/
#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include <stdio.h>
#include "my_function.h"

void redirect_all_std(void)
{
    cr_redirect_stdout();
    cr_redirect_stderr();
}

void my_func(void)
{
    printf("My test\n");
}

// Test (my_function, simple_test_1, .init = redirect_all_std)
// {
//     // function_one(1);
//     printf("1\n");
//     cr_assert_stdout_eq_str("1\n");
// }

// Test (my_function, simple_test_2, .init = redirect_all_std)
// {
//     function_two(2);
//     cr_assert_stdout_eq_str("2\n");
// }

Test (my_function, simple_test_return_1, .init = my_func)
{
    int result = function_one(1);

    cr_assert(result == 0,"Function_one haven't return 0.");
}

Test (my_function, simple_test_return_2, .init = my_func)
{
    int result = function_two(2);

    cr_assert(result == 0, "Function_two haven't return 10.");
}