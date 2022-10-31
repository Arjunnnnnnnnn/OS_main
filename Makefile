CC = gcc
CC_FLAGS = -o
ODIR = bin

all: prepare shell cat rm ls mkdir date

prepare:
	mkdir -p bin

shell: arjun_shell.c
	$(CC) $(CC_FLAGS) shell arjun_shell.c -lm

cat: external/cat.c
	$(CC) $(CC_FLAGS) $(ODIR)/cat external/cat.c -lm

rm: external/rm.c
	$(CC) $(CC_FLAGS) $(ODIR)/rm external/rm.c

ls: external/ls.c
	$(CC) $(CC_FLAGS) $(ODIR)/ls external/ls.c

mkdir: external/mkdir.c
	$(CC) $(CC_FLAGS) $(ODIR)/mkdir external/mkdir.c

date: external/date.c
	$(CC) $(CC_FLAGS) $(ODIR)/date external/date.c

