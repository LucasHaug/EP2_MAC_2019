all: ep

clean:
ifeq ($(OS), Windows_NT)
	@rm *.exe *.o *.so
else
	@rm ep *.o *.so
endif

clean_txt:
ifeq ($(OS), Windows_NT)
	@rm *.txt
else
	@rm *.txt
endif

clean_all: clean clean_txt
	@rm -rf ./.vscode

ep:
	# @gcc -g -Wall -Wextra *.c -o ep 2>erros.txt
	@gcc -g -Wall -Wextra ep.c -o ep

run: all
ifeq ($(OS), Windows_NT)
	@start powershell -NoExit ./ep
else
	@./ep 
endif

SOURCES = ep.c tester.c
OBJECTS = $(SOURCES:.c=.o)

test.so: $(OBJECTS)
	@gcc -c ep.c tester.c -fPIC
	@gcc -shared $(OBJECTS) -o test.so -fPIC

test: test.so
	@python tester.py


.PHONY: all clean clean_txt clean_all ep run test.so test