/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   tester.h                                           :+:    :+:            */
/*                                                     +:+                    */
/*   By: jkoopman <jkoopman@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/02/25 19:46:15 by jkoopman       #+#    #+#                */
/*   Updated: 2020/03/02 14:11:50 by jkoopman      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#ifndef TESTER_H
# define TESTER_H

# include <sys/types.h>

extern ssize_t		ft_write(int fildes, const void *buf, size_t nbyte);
extern ssize_t		ft_read(int fildes, void *buf, size_t nbyte);
extern size_t		ft_strlen(const char *s);
extern char			*ft_strcpy(char *dst, const char *src);
extern int			ft_strcmp(const char *s1, const char *s2);
extern char			*ft_strdup(const char *s1);

#endif
