# use our pre-built image, which includes the JDK, and our Java program
FROM virtualstaticvoid/heroku-docker-r-examples:rjava

# replace the application files, presumably with more recent ones,
# since for the sake of this example, they change more frequently
# than the pre-built Java program (and it's runtime dependencies)
COPY . /app

# override the base image CMD
CMD ["/usr/bin/R", "--no-save", "-f", "/app/app.R"]
