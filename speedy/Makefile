# default build target
all::

all:: build
.PHONY: all

build-base:

	docker build \
		--tag virtualstaticvoid/heroku-docker-r-examples:rjava \
		--file Dockerfile.base .

push-base:

	docker push virtualstaticvoid/heroku-docker-r-examples:rjava

build:

	docker build --tag heroku-docker-r-example:speedy .

run:

	docker run -it heroku-docker-r-example:speedy
