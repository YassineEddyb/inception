
all:
	@docker-compose -f srcs/docker-compose.yml up

build:
	@docker-compose -f srcs/docker-compose.yml up --build -d

down:
	@docker-compose -f srcs/docker-compose.yml down

clean: down

fclean: clean
	# @docker rm -fv $$(docker ps -aq)
	@docker volume rm -f $$(docker volume ls -q)
	@docker system prune -af --volumes
	@docker image prune -f
	@docker network prune -f
	@docker volume prune -f
	@docker image rm -f $$(docker image ls -aq)


re:	fclean
	@docker-compose -f srcs/docker-compose.yml up --build -d

.PHONY	: all build down re clean fclean