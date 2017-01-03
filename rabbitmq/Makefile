defalult: build

build:
	echo pull sysrun/rpi-rabbit

run2:
	docker run -d --hostname rpi-rabbit --name rabbit2 -p 8090:15672 -p 5672:5672 -v ~/projects/:/projects sysrun/rpi-rabbitmq  

exec2:
	docker exec -it rabbit2 /bin/bash
