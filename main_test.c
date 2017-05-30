/*
** File: /home/gaby/Documents/dev/asm_minilibc/main_test.c
** Project: /home/gaby/Documents/dev/asm_minilibc
** Created Date: Mon Mar 20 2017
** Author: Gabriel de Blois
**
** Copyright (c) 2017 gabriel.de-blois@epitech.eu
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#define HUGE (1000000000)

int     main()
{
    char c = 'd';
    write (1, &c, 1);

    char    array1[25] = "The foobar striked again";
    char    array2[25] = "The foobar foobar strike";
    char    *huge_array;
    char    *other_huge_array;

    huge_array = malloc(HUGE);
    //other_huge_array = malloc(HUGE);
    huge_array[0] = '\0';

    other_huge_array = strstr(array2, "");
    printf("%s\n", other_huge_array);

    printf("%p\n", strstr("", ""));
    printf("%p\n", strstr("A test", ""));
    printf("%p\n", strstr("", "A test"));


    // memset(huge_array, 'a', HUGE);


    // huge_array[HUGE - 1] = '\0';

    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);
    //memcpy(other_huge_array, huge_array, HUGE);

    //printf("%d\n" , strcmp(other_huge_array, huge_array));

    //printf("strlen on empty string : %ld\n", strlen(""));
    //printf("strlen on little string : %ld\n", strlen("qzdlqzdlqkzmldkqzmldkqmlzkdqlk"));
    //printf("strlen on huge string : %ld\n", strlen(huge_array));
    //printf("strlen on huge string : %ld\n", strlen(huge_array));
    //printf("strlen on huge string : %ld\n", strlen(huge_array));
    //printf("strlen on huge string : %ld\n", strlen(huge_array));
    //printf("strlen on huge string : %ld\n", strlen(huge_array));
    //printf("strlen on huge string : %ld\n", strlen(huge_array));

    /*printf("strcmp on empty arrays : %d\n", strcmp("", ""));
    printf("strcmp on different arrays : %d\n", strcmp("a", ""));
    printf("strcmp on different reverse arrays : %d\n", strcmp("", "a"));
    printf("strcmp on huge identical arrays : %d\n", strcmp(huge_array, huge_array));

    printf("strcasecmp on empty arrays : %d\n", strcasecmp("", ""));
    printf("strcasecmp on different arrays : %d\n", strcasecmp("a", ""));
    printf("strcasecmp on different reverse arrays : %d\n", strcasecmp("", "a"));
    printf("strcasecmp on ident but with case diff arrays : %d\n", strcasecmp("Aaa", "aAa"));
    printf("strcasecmp on huge identical arrays : %d\n", strcasecmp(huge_array, huge_array));

    memcpy(other_huge_array, huge_array, HUGE);
    printf("memcpy on huge (success og this test = 0) : %d\n", strcmp(other_huge_array, huge_array));
    */
}
