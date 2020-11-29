.DEFAULT_GOAL := build-run

build-run: build run

run:
	java -cp ./target/classes games.Slot

clean:
	rm -rf ./target

build: clean
	mkdir -p ./target/classes
	javac -d ./target/classes ./src/main/java/games/Slot.java

update:
	./mvnw versions:update-properties
	./mvnw versions:display-plugin-updates