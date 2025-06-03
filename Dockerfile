# Sử dụng image Tomcat chính thức
FROM tomcat:10
# Xóa các webapp mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file .war của bạn vào Tomcat
COPY target/web-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat chạy cổng 8080
EXPOSE 8080
