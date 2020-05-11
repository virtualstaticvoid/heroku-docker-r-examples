# default build target
all::

all:: build
.PHONY: all build run

APP:=$(shell basename $(PWD))

build:

	docker build \
		--tag virtualstaticvoid/heroku-docker-r-examples:rjava \
		--file Dockerfile.base .

	docker build --tag heroku-docker-r-example:$(APP) .

run:

	docker run -it --rm heroku-docker-r-example:$(APP)
