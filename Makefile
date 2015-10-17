CC = clang++

# Directories. All paths are relative to root directory of project
# INCDIR = Directory where local headers are found
# OBJDIR = Directory where object files should temporarily be stored
# SRCDIR = Directory to source files
# BINDIR = Directory where final executable should be placed
INCDIR = includes
OBJDIR = obj
SRCDIR = src
BINDIR = bin

CXXFILES := $(shell find src -mindepth 1 -maxdepth 4 -name "*.cpp")
OBJFILES := $(CXXFILES:$(SRCDIR)/%.cpp=%)
OFILES := $(OBJFILES:%=$(OBJDIR)/%.o)
HFILES := $(OBJFILES:%=$(INCDIR)/%.h)

FINAL_EXECUTABLE = mycavestory
DEBUG_EXECUTABLE = debug

LIBS = -lSDL2 -lSDL2_image
CFLAGS = -I$(INCDIR) -Wall -Wextra -pedantic -std=c++11

ifdef DEBUG
	CFLAGS := $(CFLAGS) -g
endif

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp 
	$(CC) -c -o $@ $< $(CFLAGS)

$(BINDIR)/$(FINAL_EXECUTABLE): $(OFILES)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(OBJDIR)/*.o *~ core $(INCDIR)/*~ $(BINDIR)/*

debug: $(OFILES)
	$(CC) -g -o $(BINDIR)/$(DEBUG_EXECUTABLE) $^ $(CFLAGS) $(LIBS)
