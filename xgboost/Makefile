# default build target
all::

all:: build
.PHONY: all build run

APP:=$(shell basename $(PWD))
BASE_IMAGE:=ghcr.io/virtualstaticvoid/heroku-docker-r-examples:$(APP)-base

pre-build:

	docker build \
		--pull \
		--tag $(BASE_IMAGE) \
		--file Dockerfile.base .

build: pre-build

	docker build \
			--tag heroku-docker-r-example:$(APP) \
			--build-arg APP=$(APP) \
			.

run:

	docker run -it --rm heroku-docker-r-example:$(APP)

publish:

	docker push $(BASE_IMAGE)
