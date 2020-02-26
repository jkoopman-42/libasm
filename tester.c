/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   tester.c                                           :+:    :+:            */
/*                                                     +:+                    */
/*   By: jkoopman <jkoopman@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/02/25 19:45:27 by jkoopman       #+#    #+#                */
/*   Updated: 2020/02/26 19:24:31 by jkoopman      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "tester.h"
#include <stdio.h>
#include <string.h>

/*
** Testing main for LibASM
*/

int			main(void)
{
	ft_write(1, "42 Write function\n", 18);
	printf("|Je moeder| %lu - %lu\n", strlen("Je moeder"), ft_strlen("Je moeder"));
	return (0);
}
