.DEFAULT_GOAL := build-run

compile-run: build run

#compile: clean
#	mkdir -p ./target/classes
#	javac -d ./target/classes ./src/main/java/games/Slot.java

run:
	jar cfe ./target/projectsteps.jar games.Slot -C ./target/classes .

clean:
	rm -rf ./target

build: #compile
	jar cfe ./target/projectsteps.jar games.Slot -C ./target/classes .

update:
	./mvnw versions:update-properties
	./mvnw versions:display-plugin-updates