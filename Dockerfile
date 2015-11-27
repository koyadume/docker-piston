# Base Image
FROM koyadume/docker-tomcat:dockerhub-8.0.28

# Maintainer
MAINTAINER Shailendra Singh <shailendra_01@outlook.com>

WORKDIR $CATALINA_HOME

RUN rm conf/server.xml

ADD https://github.com/koyadume/piston-core/releases/download/2.2/server.xml conf/
ADD http://central.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/1.2.0/mariadb-java-client-1.2.0.jar lib/
ADD https://github.com/koyadume/piston-core/releases/download/2.2/piston-core-2.2-bolt-1.1-rc1.war webapps/piston.war
ADD https://github.com/koyadume/piston-core/releases/download/2.2/piston-service-2.2.war webapps/piston-service.war
ADD https://github.com/koyadume/custom-bolt/releases/download/1.1-rc1/bolt-service-1.1-rc1.war webapps/bolt-service.war
ADD https://github.com/koyadume/admin-steam/releases/download/1.1/steam-service-1.1.war webapps/steam-service.war
ADD https://github.com/koyadume/custom-userManagement/releases/download/1.1/userMgmt-service-1.1.war webapps/userMgmt-service.war


