FROM sonarqube:community
COPY pluginsToDelete ./
RUN rm -f `cat pluginsToDelete`
COPY plugins/* /opt/sonarqube/extensions/plugins/
