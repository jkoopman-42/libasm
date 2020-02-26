/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   tester.h                                           :+:    :+:            */
/*                                                     +:+                    */
/*   By: jkoopman <jkoopman@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/02/25 19:46:15 by jkoopman       #+#    #+#                */
/*   Updated: 2020/02/26 19:11:21 by jkoopman      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#ifndef TESTER_H
# define TESTER_H

# include <sys/types.h>

ssize_t		ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t		ft_read(int fildes, void *buf, size_t nbyte);
size_t		ft_strlen(const char *s);

#endif