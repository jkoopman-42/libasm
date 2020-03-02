/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   tester.c                                           :+:    :+:            */
/*                                                     +:+                    */
/*   By: jkoopman <jkoopman@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/02/25 19:45:27 by jkoopman       #+#    #+#                */
/*   Updated: 2020/03/02 17:50:30 by jkoopman      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "tester.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>

/*
** Testing main for LibASM
*/

int			main(void)
{
	// ft_write
	printf("=== Write ===\n");
	int x;
	int y;

	x = write(1, "42 Write function A\n", 20);
	y = ft_write(1, "42 Write function B\n", 20);
	printf("Write: %d - %d\n", x, y);

	// ft_strcpy
	printf("=== Strcpy ===\n");
	char	*src = "Je moeder is een plopkoek";
	char	dest[strlen(src) + 1];
	
	printf("STR: |%s|\n", strcpy(dest, src));
	bzero(dest, strlen(src) + 1);
	printf("FT_STR: |%s|\n", ft_strcpy(dest, src));

	// ft_strlen
	printf("=== Strlen ===\n");
	x = strlen(src);
	y = ft_strlen(src);

	printf("String: |%s|\n", src);
	printf("%lu - %zu\n", strlen(src), ft_strlen(src));
	return (0);
}
