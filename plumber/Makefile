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

	@curl -v "localhost:8080/echo?msg=Hello%20World!"
	@curl -v -d "a=10" -d "b=2" localhost:8080/sum
	@curl -v "http://localhost:8080/plot" -o plot.png
