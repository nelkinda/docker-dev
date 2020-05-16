JENKINS_DIR:=$(dir $(lastword $(MAKEFILE_LIST)))
.PHONY: jenkinsd
## Starts a local Jenkins server using Docker.
# If a Docker container jenkins exists, it will (re)start it.
# If it doesn't exist, it will download the Jenkins docker image and start a container with the same name.
jenkinsd:
	$(MAKE) -C $(JENKINS_DIR)/
