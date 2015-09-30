
INCLUDES = include
CC = g++
CFLAGS = -I$(INCLUDES) -Wall -Wextra -pedantic -std=c++11

OBJDIR = obj
SRCDIR = src
BINDIR = bin
FINAL_EXECUTABLE = mycavestory

LIBS = -lSDL2

_DEPS = graphics.h
DEPS = $(patsubst %, $(INCLUDES)/%,$(_DEPS))

_OBJ = main.o graphics.o
OBJ = $(patsubst %,$(OBJDIR)/%,$(_OBJ))

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp $(DEPS)
		$(CC) -c -o $@ $< $(CFLAGS)

$(BINDIR)/$(FINAL_EXECUTABLE): $(OBJ)
		$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
		rm -f $(OBJDIR)/*.o *~ core $(INCLUDES)/*~ $(BINDIR)/*

