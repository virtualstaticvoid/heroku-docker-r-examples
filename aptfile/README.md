# R Aptfile Example

## Example

Using an `Aptfile` to install additional binary dependencies.

## Usage

* Build the docker image

  ```bash
  make build
  ```

* To run the application locally

  ```bash
  make run
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
