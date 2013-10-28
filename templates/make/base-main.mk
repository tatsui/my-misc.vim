CC            = gcc
CFLAGS        = -g #-O4 -Wall -I/usr/local/include
LDFLAGS       = #-L/usr/local/lib
LIBS          = -lm
OBJS          = main.o {{_cursor_}}
PROGRAM       = {{_input_:name}}

all:            $(PROGRAM)

$(PROGRAM):     $(OBJS)
	                $(CC) $(OBJS) $(LDFLAGS) $(LIBS) -o $(PROGRAM)

run:$(PROGRAM)
	./$(PROGRAM)

clean:;         rm -f *.o *~ $(PROGRAM)
