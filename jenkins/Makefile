## Port for the Jenkins server.
JENKINS_PORT?=8080

.PHONY: jenkinsd
## Starts a local Jenkins server using Docker.
# If a Docker container jenkins exists, it will (re)start it.
# If it doesn't exist, it will download the jenkins docker image and start a container with the same name.
jenkinsd: docker-nelkinda-jenkins
	docker start nelkinda-jenkins || docker run -d --name nelkinda-jenkins -p ${JENKINS_PORT}:8080 nelkinda-jenkins

.PHONY: docker-nelkinda-jenkins
## Builds the docker image nelkinda-jenkins.
docker-nelkinda-jenkins:
	docker build -t nelkinda-jenkins .

.PHONY: clean
## Removes all auto-generated files.
clean:: ;

-include ../.makehelp/include/makehelp/Help.mk

ifeq (help, $(filter help,$(MAKECMDGOALS)))
../.makehelp/include/makehelp/Help.mk:
	git clone --depth=1 https://github.com/christianhujer/makehelp.git ../.makehelp
endif

-include .User.mk
-include ../.User.mk
-include ~/.User.mk
