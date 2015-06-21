# Install mingw32
# Ubuntu
# sudo apt-get install mingw32
#

CC            = i586-mingw32msvc-gcc
MENU          = i586-mingw32msvc-windres
CFLAGS        = -g #-O4 -Wall -I/usr/local/include
LDFLAGS       = -mwindows #-L/usr/local/lib
LIBS          = -lm
OBJS          = main.o {{_cursor_}}
RC            = {{_input_:rc_name}}
PROGRAM       = {{_input_:prog_name}}

all:            $(PROGRAM)

$(PROGRAM):     $(OBJS)
	                $(CC) $(OBJS) $(LDFLAGS) $(LIBS) -o $(PROGRAM)

run:$(PROGRAM)
	./$(PROGRAM)

clean:;         rm -f *.o *~ $(PROGRAM)

rc:
	echo '#include <windows.h>' > {{_input_:rc_name}}
	echo 'IDI_ICON1	ICON	DISCARDABLE	"0001.ico"' >> {{_input_:rc_name}}
