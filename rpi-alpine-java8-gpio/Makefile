
default: build

build:
	docker build -t gpio2 .

run:
	docker run --name gpio2 --privileged -it -p 8082:8080 -v ~/projects:/projects -d gpio2 	

exec:
	docker exec -it gpio2 /bin/bash


