NAME := ${DOCKERHUB_PUSH_ACCOUNT}/inline-cache-experiment 

build:
	DOCKER_BUILDKIT=1 docker build --cache-from=${NAME} --build-arg BUILDKIT_INLINE_CACHE=1 . -t ${NAME}

push: build
	docker push ${NAME}
