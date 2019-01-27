BIN=gbdk-n/bin
OBJ=./obj



build:
	mkdir -p $(OBJ)
	$(BIN)/gbdk-n-compile.sh game_of_life.c -o $(OBJ)/game_of_life.rel
	$(BIN)/gbdk-n-link.sh $(OBJ)/game_of_life.rel -o $(OBJ)/game_of_life.ihx
	$(BIN)/gbdk-n-make-rom.sh $(OBJ)/game_of_life.ihx game_of_life.gb

clean:
	rm -rf $(OBJ)
	rm -f game_of_life.gb
