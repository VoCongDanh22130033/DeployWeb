FROM tomcat:10

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/web.war /usr/local/tomcat/webapps/web.war

EXPOSE 8080

CMD ["catalina.sh", "run"]