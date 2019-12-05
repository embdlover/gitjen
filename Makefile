cc = gcc
CFLAGS =-c -Wall

.PHONY = all clean run a.out

a.out: all
	./run 10 20
all: run

run: main.o sum.o mul.o
	$(cc) main.o sum.o mul.o -o run
main.o: main.c
	$(cc) $(CFLAGS) main.c
sum.o: sum.c
	$(cc) $(CFLAGS) sum.c
mul.o: mul.c
	$(cc) $(CFLAGS) mul.c

clean:
	rm -rf *.o run
