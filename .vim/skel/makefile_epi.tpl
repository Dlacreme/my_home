##
## Makefile
##
## Made by Mathieu Delacroix
## mathieu.delacroix.fr@gmail.com
##
## Started on  @@CDATE@@ @@AUTHOR@@
## Last update @@MDATE@@ @@MAUTHOR@@
##

SRC	=

NAME	=

FLAG	= -Wall -Wextra -W -Werror
#FLAG	+= -g
#FLAG	+= -O2 -s

CFLAGS	= $(FLAG)

LDFLAGS	= $(FLAG)

OBJ	= $(SRC:.c=.o)

RM	= rm -f

CC	= gcc

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) $(LDFLAGS) -o $(NAME)

clean:
	$(RM) $(OBJ) *.swp *~ *#

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
