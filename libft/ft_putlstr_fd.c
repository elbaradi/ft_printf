/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_putstr_fd.c                                     :+:    :+:            */
/*                                                     +:+                    */
/*   By: tel-bara <tel-bara@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/10/29 19:48:40 by tel-bara      #+#    #+#                 */
/*   Updated: 2020/11/24 20:24:29 by tel-bara      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_putlstr_fd(char *s, int fd)
{
	if (s)
		return (write(fd, s, ft_strlen(s)));
	return (0);
}
