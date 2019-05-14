all: ep

clean:
ifeq ($(OS), Windows_NT)
	@rm *.exe 
else
	@rm ep 
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
	# @gcc -g -Wall -Wextra *.c -o -lm ep 2>erros.txt
	gcc -g -Wall -Wextra *.c -o ep -lm

run: all
ifeq ($(OS), Windows_NT)
	@start powershell -NoExit ./ep
else
	@./ep 
endif

tests:
	@fish ../tests.fish

teste1:
	@echo 1 0 1 1
	@echo 1 1 1 1 1 | ./ep

teste2:
	@echo 3 0 0 2 2 2 3 5
	@echo 3 4 10 331 213 231 330 321 331 | ./ep

teste3:
	@echo 5 0 2 2 2 3 72364
	@echo 5 8 3 72364 12345 72445 66664 | ./ep

teste4:
	@echo 6 0 2 3 2 2 6 5
	@echo 6 3 10 112012 210210 111111 100000 222222 112012 | ./ep

teste5:
	@echo 6 0 3 3 3 2 4 3 6 122122
	@echo 6 2 6 122122 212121 121111 121221 221212 222222 121111 | ./ep

teste6:
	@echo 4 0 0 0 2 2852
	@echo 4 8 2 2852 1227 4313 | ./ep

teste7:
	@echo 1 0 0 0 0 0 0 1 6
	@echo 1 5 88 5 2 3 4 2 4 5 2 4 3 1 1 3 5 4 5 2 2 4 2 3 2 4 2 5 1 2 2 3 3 3 2 1 4 5 4 5 2 2 2 5 4 4 5 1 4 2 3 4 1 4 5 2 2 2 4 1 1 1 3 3 2 1 3 2 1 3 1 3 3 4 2 2 3 5 1 3 4 4 1 2 3 2 3 3 3 1 5 3 | ./ep

.PHONY: all clean clean_txt clean_all ep run teste1 teste2 teste3 teste4