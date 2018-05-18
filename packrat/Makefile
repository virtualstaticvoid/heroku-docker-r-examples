# default build target
all::

all:: build
.PHONY: all

build:

	docker build --tag heroku-docker-r-example:packrat .

run:

	docker run -it heroku-docker-r-example:packrat
