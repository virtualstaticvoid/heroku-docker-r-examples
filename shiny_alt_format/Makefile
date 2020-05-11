# default build target
all::

all:: build
.PHONY: all build run test

APP:=$(shell basename $(PWD))

build:

	docker build --tag heroku-docker-r-example:$(APP) .

run:

	docker run -it --rm -p "8080:8080" heroku-docker-r-example:$(APP)

test:

	@xdg-open http://localhost:8080
