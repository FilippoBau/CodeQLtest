# Definizione delle variabili
CC = gcc
CFLAGS = -Wall -Wextra -std=c11

# Trova tutti i file sorgente nella cartella corrente
SOURCES := $(wildcard *.c)

# Genera i nomi degli eseguibili rimuovendo l'estensione .c
TARGETS := $(SOURCES:.c=)

# Regola predefinita per la compilazione di tutti gli eseguibili
all: $(TARGETS)

# Regola generica per la compilazione dei file sorgente in eseguibili
$(TARGETS): % : %.c
	$(CC) $(CFLAGS) -o $@ $<

# Regola per la pulizia dei file generati
clean:
	rm -f $(TARGETS)