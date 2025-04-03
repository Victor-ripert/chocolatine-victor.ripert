/*
** EPITECH PROJECT, 2025
** Minishell1
** File description:
** main.c
*/
#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include "mysh.h"

int main(UNUSED int argc, UNUSED char **argv, char **env)
{
    printf("coding style error");
    int result = shell_loop(env);

    return result;
}
