ARG APP

# use our pre-built image, which includes the JDK, and our Java program
FROM ghcr.io/virtualstaticvoid/heroku-docker-r-examples:${APP}-base

# replace the application files, presumably with more recent ones
COPY . /app

# override the base image CMD
CMD ["/usr/bin/R", "--no-save", "-f", "/app/app.R"]
