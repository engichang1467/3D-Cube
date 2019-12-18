OS := $(shell uname)

ifeq ($(OS), Darwin)
	# Check if its in MAC OS
	LDFLAGS = -framework OpenGl -lglfw -lGLEW -lglut
else
	# Check if its Linux
	LDFLAGS = -lGL -lglut -lGLEW -lglfw -lGLU -lGL
endif

all:
	g++ -Wall -o cube main.cpp $(LDFLAGS)

clean:
	rm -rf cube
