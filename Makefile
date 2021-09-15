all : hello

hello.o : hello.c
	$(CC) $(CFLAGS) -c $<

hello : hello.o
	$(CC) $(CFLAGS) $(LDFLAGS) $(LIBS) -o $@ $^

clean:
	rm -rf *.o hello