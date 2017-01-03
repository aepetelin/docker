
default: build

build:
	docker build -t aepetelin/alpine-java .

run:
	docker run --name java1 -it -p 8081:80 -p 8082:8080 -v ~/projects:~/projects -d aepetelin/alpine-java 	

exec:
	docker exec -it java1 /bin/bash


