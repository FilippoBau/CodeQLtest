all:    test1

test1:
	gcc -o test.o -c BufferOverflow/bof-classic/vsnippet/23-bof-classic.c
clean:
	rm test*.o
