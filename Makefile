SRC= optseq.cpp   csp.cpp		iodata.cpp	search.cpp	\
construct.cpp	csp_linear.cpp	optseqimpl.cpp	construct_reverse.cpp	solve.cpp

OBJ=$(SRC:.cpp=.o)
#CC=g++-11
CC=clang++ #-std=c++17

INCLUDE=
#CFLAGS =-g -Wno-logical-op-parentheses
#CFLAGS =-Wno-logical-op-parentheses
#CFLAGS = -ansi -O2 -fpermissive -Wno-logical-op-parentheses
#CFLAGS = -O2 -fpermissive -Wno-logical-op-parentheses -Wno-parentheses
CFLAGS = -O2 -fpermissive  -Wno-parentheses

.SUFFIXES:
.SUFFIXES: .o .cpp

.cpp.o:
	$(CC) $(INCLUDE) $(CFLAGS) -c $<


optseq:$(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ)
#	$(CC) $(CFLAGS) $(INCLUDE) -o $@ $(OBJ) -lm /usr/local/glpk-4.33/lib/libglpk.a
#	$(CC) $(CFLAGS) $(INCLUDE) -o $@ $(OBJ) -lm /c/glpk/glpk-4.34/lib/libglpk.a
#	$(CC) $(CFLAGS) $(INCLUDE) -o $@ $(OBJ) -lm /usr/local/lib/libglpk.a
#	$(CC) $(CFLAGS) -o $@ $(OBJ) -lm
$(OBJ):


clean:
	rm -f *.o
	rm -f *.bbg
	rm -f *.bb
	rm -f *.da
	rm -f *~
	rm -f *.gcda
	rm -f *.gcno
