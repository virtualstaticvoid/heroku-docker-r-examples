# R Ruby Example

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
  heroku apps:open
  ```
