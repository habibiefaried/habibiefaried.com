scratchsrv: scratchsrv.o
	cc scratchsrv.o -o scratchsrv

scratchsrv.o: scratchsrv.c
	cc -c scratchsrv.c -o scratchsrv.o

clean:
	chmod +x scratchsrv
