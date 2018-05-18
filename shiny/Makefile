# default build target
all::

all:: build
.PHONY: all

build:

	docker build --tag heroku-docker-r-example:shiny .

run:

	docker run -it -p "8080:8080" heroku-docker-r-example:shiny
