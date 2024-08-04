IMAGES=mariadb wordpress nginx
VOLUMES=mariadb wordpress
COMPOSE_PATH=./srcs/docker-compose.yml

all: build up

build:
	docker compose -f $(COMPOSE_PATH) build

up:
	docker compose -f $(COMPOSE_PATH) up -d

down:
	docker compose -f $(COMPOSE_PATH) down

stop:
	docker compose -f $(COMPOSE_PATH) stop

start:
	docker compose -f $(COMPOSE_PATH) start

clean: down
	docker system prune -af

fclean: clean
	docker volume rm $(VOLUMES)

re: down all

.PHONY: all build up down clean re