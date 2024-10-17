CC = gcc
bin = ../bin
lib = ../lib
include = ../include

# Target for the main executable
$(bin)/main: main.c $(lib)/primes.o | $(bin)
	$(CC) -o $@ $^ -I$(include)

# Target for the primes object file
$(lib)/primes.o: primes.c | $(lib)
	$(CC) -o $@ -c $< -I$(include)

$(bin):
	mkdir -p $(bin)

$(lib):
	mkdir -p $(lib)

clean:
	rm -rf $(lib)
	rm -rf $(bin)