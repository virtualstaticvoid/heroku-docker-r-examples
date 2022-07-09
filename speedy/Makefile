# default build target
all::

all:: build
.PHONY: all build run

APP:=$(shell basename $(PWD))

pre-build:

	docker build \
		--tag ghcr.io/virtualstaticvoid/heroku-docker-r-examples:$(APP)-base \
		--file Dockerfile.base .

build: pre-build

	docker build \
			--tag heroku-docker-r-example:$(APP) \
			--build-arg APP=$(APP) \
			.

run:

	docker run -it --rm heroku-docker-r-example:$(APP)

publish:

	docker push ghcr.io/virtualstaticvoid/heroku-docker-r-examples:$(APP)-base
