CC ?= gcc
INSTALL ?= install
RM ?= rm
PREFIX ?= /usr/local

.PHONY: all
all: example

example: examples/simple.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -I. $< -o example -lglfw -lm

.PHONY: clean
clean:
	$(RM) example

.PHONY: install
install: gltext.h
	$(INSTALL) $< $(PREFIX)/include/

.PHONY: uninstall
uninstall: gltext.h
	$(RM) $(PREFIX)/include/$<

