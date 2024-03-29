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
	@gcc -g -Wall -Wextra *.c -o teste 2>erros.txt
	# @gcc -g -Wall -Wextra ep.c -o teste

run: all
ifeq ($(OS), Windows_NT)
	@start powershell -NoExit ./ep
else
	@./ep 
endif

SOURCES = $(wildcard *.c)
OBJECTS = $(SOURCES:.c=.o)

%.o: %.c
	@gcc -c $< -o $@ -fPIC

test.so: $(OBJECTS)
	@gcc -shared $(OBJECTS) -o test.so -fPIC

test_functions: test.so
	@python tester.py

test_results:
	@python3 checks.py 

.PHONY: all clean clean_txt clean_all ep run test.so test_functions test_results