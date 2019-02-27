FROM virtualstaticvoid/heroku-docker-r:build

# ONBUILD will copy application files into the container
#  and execute onbuild, Aptfile, init.R and restore packrat packages (if they are provided)

ENV PORT=8080

# override the base image CMD
CMD ["/bin/sh", "-c", "bundle exec rackup --host 0.0.0.0 --port ${PORT}"]
