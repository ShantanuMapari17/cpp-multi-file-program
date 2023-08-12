CC = g++
CFLAGS = -Wall -Wextra -std=c++11
SRC_FILES = main.cpp div.cpp add.cpp sub.cpp
OUTPUT = main

all: $(OUTPUT)

$(OUTPUT): $(SRC_FILES:.cpp=.o)
	$(CC) $(CFLAGS) -o $(OUTPUT) $(SRC_FILES:.cpp=.o)

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OUTPUT) $(SRC_FILES:.cpp=.o)