it: build deploy
build:
	docker buildx bake --load dev
deploy:
	docker stack deploy -c docker-stack.yml huggingface
remove:
	docker stack rm huggingface
prune:
	docker volume ls --filter=label=com.docker.stack.namespace=huggingface -q | xargs docker volume rm
