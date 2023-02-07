runtime: all
	time ./main < gn.txt > o.txt

all: main

main:
	g++ main.cpp -o main
