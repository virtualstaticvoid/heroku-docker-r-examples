# default build target
all::

all:: build
.PHONY: all build run

APP:=$(shell basename $(PWD))

UID:=$(shell id -u)
GID:=$(shell id -g)
SITE_LIB:=$(shell mktemp -d)
CACHE:=$(shell mktemp -d)

.init:

	@rm -rf renv || true
	@rm renv.lock || true
	@rm .Rprofile || true

	docker run --tty --rm --user "$(UID):$(GID)" \
		--volume "$(PWD):/app" \
		--volume "$(SITE_LIB):/var/R/site-library" \
		--volume "$(CACHE):/.cache" \
		--env R_LIBS_SITE=/var/R/site-library \
		--env R_LIBS_USER=/var/R/site-library \
		--workdir=/app \
		ghcr.io/virtualstaticvoid/heroku-docker-r:latest \
		/usr/bin/R --no-save --quiet -s --file=/app/setup.R

build:

	docker build --tag heroku-docker-r-example:$(APP) .

run:

	docker run -it --rm heroku-docker-r-example:$(APP)
