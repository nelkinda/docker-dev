# Docker Images and Makefiles

## SonarQube
Running SonarQube locally on your machine.

Put this in your `Makefile`:

```make
include sonarqube/SonarQube.mk
```

And run it with `make sonard`

By default, SonarQube will run on port 9000.
If you want to change the port, define `SONAR_PORT` in the environment to the port that you would like instead.
