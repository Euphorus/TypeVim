CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c99
TARGET = typevim
SOURCES = main.c

$(TARGET): $(SOURCES)
	$(CC) $(CLAGS) $(SOURCES) -o $(TARGET)

clean:
	rm -f $(TARGET)

install: $(TARGET)
	sudo cp $(TARGET) /usr/local/bin

uninstall: 
	sudo rm -f /usr/local/bin/$(TARGET)


