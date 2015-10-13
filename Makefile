CC = clang++

INCDIR = includes
OBJDIR = obj
SRCDIR = src
BINDIR = bin

FINAL_EXECUTABLE = mycavestory

LIBS = -lSDL2 -lSDL2_image
CFLAGS = -I$(INCDIR) -Wall -Wextra -pedantic -std=c++11

# List header files here, assuming they're all in the inc/ directory
#_DEPS = graphics.h game.h input.h sprite.h globals.h animatedsprite.h player.h level.h
_DEPS = *.h
DEPS = $(patsubst %, $(INCDIR)/%,$(_DEPS))

_OBJ = main.o graphics.o game.o input.o sprite.o animatedsprite.o player.o level.o
OBJ = $(patsubst %,$(OBJDIR)/%,$(_OBJ))

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(BINDIR)/$(FINAL_EXECUTABLE): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(OBJDIR)/*.o *~ core $(INCDIR)/*~ $(BINDIR)/*

