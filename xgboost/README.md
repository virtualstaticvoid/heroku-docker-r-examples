# R xgboost Example

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

## Background

Solution for [heroku-docker-r/issues/26][issue].

The `xgboost` library takes a significant amount of time to compile, which causes a timeout when 
deploying the application to Heroku.

The deployment fails with an error message similar to the following:

```
remote: g++ -std=gnu++14 -I"/usr/share/R/include" -DNDEBUG -I./include -I./dmlc-core/include -I./rabit/include -I. -DXGBOOST_STRICT_R_MODE=1 -DDMLC_LOG_BEFORE_THROW=0 -DDMLC_ENABLE_STD_THREAD=1 -DDMLC_DISABLE_STDIN=1 -DDMLC_LOG_CUSTOMIZE=1 -DXGBOOST_CUSTOMIZE_LOGGER=1 -DRABIT_CUSTOMIZE_MSG_    -fopenmp -DDMLC_CMAKE_LITTLE_ENDIAN=1 -pthread -fvisibility=hidden -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-tbZjLv/r-base-4.1.0=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c amalgamation/xgboost-all0.cc -o amalgamation/xgboost-all0.o
remote: g++: fatal error: Killed signal terminated program cc1plus
remote: compilation terminated.
remote: make: *** [/usr/lib/R/etc/Makeconf:175: amalgamation/xgboost-all0.o] Error 1
remote: Makevars:17: -DXGBOOST_STRICT_R_MODE=1
remote: Makevars:17: -DDMLC_LOG_BEFORE_THROW=0
remote: Makevars:17: -DDMLC_ENABLE_STD_THREAD=1
remote: Makevars:17: -DDMLC_DISABLE_STDIN=1
remote: Makevars:17: -DDMLC_LOG_CUSTOMIZE=1
remote: Makevars:17: -DXGBOOST_CUSTOMIZE_LOGGER=1
remote: Makevars:17: -DRABIT_CUSTOMIZE_MSG_
remote: ERROR: compilation failed for package ‘xgboost’
```

Notice the message `Killed signal terminated program`.

<!-- links -->

[issue]: https://github.com/virtualstaticvoid/heroku-docker-r/issues/26
