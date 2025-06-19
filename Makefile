CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c99
TARGET = typevim
SOURCES = main.c
PREFIX = /usr/local

$(TARGET): $(SOURCES)
	$(CC) $(CLAGS) $(SOURCES) -o $(TARGET)

clean:
	rm -f $(TARGET)

install: $(TARGET)
	install -m 755 $(TARGET) $(PREFIX)/bin/
	install -m 644 typevim.desktop /usr/share/applications/2>/dev/null || true

uninstall: 
	rm -f /usr/local/bin/$(TARGET)
	rm -f /usr/share/applications/typevim.desktop

.PHONY: install uninstall clean




