FROM ghcr.io/virtualstaticvoid/heroku-docker-r:build

# ONBUILD will copy application files into the container
#  and execute onbuild, Aptfile, init.R and restore packrat packages (if they are provided)

ENV PORT=8080

ENV RACK_ENV=production

# override the base image CMD
CMD ["/bin/bash", "-l", "-c", "bundle exec thin start -R config.ru -e ${RACK_ENV} -a 0.0.0.0 -p ${PORT}"]
