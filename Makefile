CC = clang

CFLAGS = -Ofast -Wall -Wextra

PROG = solve
MAIN = solve.c
HEADER_SOURCE = oracle.c

all: $(PROG)

$(HEADER_SOURCE:.c=.o): $(HEADER_SOURCE)

$(PROG): $(MAIN:.c=.o) $(HEADER_SOURCE:.c=.o)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f *.o $(PROG)
