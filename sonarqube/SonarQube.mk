SONAR_DIR:=$(dir $(lastword $(MAKEFILE_LIST)))
.PHONY: sonard
## Starts a local SonarQube server using Docker.
# If a Docker container sonarqube exists, it will (re)start it.
# If it doesn't exist, it will download the sonarqube docker image, configure the plugins, and start a container with the same name.
sonard:
	$(MAKE) -C $(SONAR_DIR)/
