all:
	@echo "\033[1;36mLaunching ...\n"
	@docker-compose -f srcs/docker-compose.yml up

build:
	@echo "\033[1;36mBuilding ...\n"
	@docker-compose -f srcs/docker-compose.yml up --build -d

down:
	@echo "\033[1;36mStopping ...\n"
	@docker-compose -f srcs/docker-compose.yml down

re:	down
	@echo "\033[1;36mRebuilding ...\n"
	@docker-compose -f srcs/docker-compose.yml up --build -d

clean: down
	@echo "\033[1;36mCleaning ...\n"
	@docker system prune -a

fclean:
	@echo "\033[1;36mTotal clean ...\n"
	@docker stop $$(docker ps -aq)
	@docker system prune -af --volumes
	@docker network prune -f
	@docker volume prune -f

.PHONY	: all build down re clean fclean