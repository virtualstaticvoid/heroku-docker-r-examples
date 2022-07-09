# R Speedy Example

## Example

This example illustrates how to pre-build the container image and then use it as the base image 
for the project, so that the deployment to Heroku is much quicker and won't timeout.

## Usage

* Build the docker image

  ```bash
  make build
  ```

* To run the application locally

  ```bash
  make run
  ```

* Publish the base image

  ```bash
  make publish
  ```

* To create the Heroku application and deploy it

  ```bash
  heroku create --stack=container
  git push heroku main
  ```

* Use the application

  ```bash
  heroku run --type=console /usr/bin/R --no-save -f /app/app.R
  ```
