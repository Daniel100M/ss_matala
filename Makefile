CC = gcc
FLAGS = -Wall -g
OBJECTS_MAIN = main.o
AR = ar

all: connections 

connections: $(OBJECTS_MAIN) my_mat.o
	$(CC) $(FLAGS) -o connections $(OBJECTS_MAIN) my_mat.o

main.o: main.c my_mat.h
	$(CC) $(FLAGS) -c main.c

my_mat.o: my_mat.c my_mat.h
	$(CC) $(FLAGS) -c my_mat.c

.PHONY: clean all

clean:
	rm -f *.o connections
	