all:	test1  test3

test1:
	gcc -o test1.o ./Buffer Overflow/bof1.c
	gcc -o test2.o ./Buffer Overflow/example1.c
    gcc -o test3.o ./Buffer Overflow/xample2.c
	gcc -o test4.o ./Buffer Overflow/gets.c
    gcc -o test5.o ./Buffer Overflow/netkit-telnet 0.17.c
	gcc -o test6.o ./Buffer Overflow/sprintf.c
    gcc -o test7.o ./Buffer Overflow/strcpy.c
test3:
	gcc -o test8.o ./Connection String Injection/example1.c
    gcc -o test8.o ./Denial Of Service/example2.c
    gcc -o test8.o ./Format String Attacks/FormatString.c
    gcc -o test8.o ./Format String Attacks/vuln.c
    gcc -o test8.o ./Integer Overflow/damnvuln.c
    gcc -o test8.o ./Out of Bounds/damnvuln.c
    gcc -o test8.o ./Symlink Attack/file.c
    gcc -o test8.o ./Use After Free/damnvuln.c
clean:
	rm test*.o