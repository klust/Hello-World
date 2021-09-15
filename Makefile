all : hello

hello.o : hello.c
	$(CC) $(CFLAGS) -c $<

hello : hello.o
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -rf *.o hello