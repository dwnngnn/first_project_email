# 1. Sử dụng Image Tomcat 9 chạy trên Java 21
FROM tomcat:9.0-jdk21-openjdk-slim

# 2. Xóa ứng dụng mặc định của Tomcat để giải phóng trang chủ
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# 3. Copy file WAR đã build từ máy bạn vào Tomcat (đổi tên thành ROOT.war để chạy trực tiếp ở đường dẫn gốc)
COPY target/first_project_email.war /usr/local/tomcat/webapps/ROOT.war

# 4. Mở cổng 8080 cho Tomcat
EXPOSE 8080

# 5. Lệnh khởi chạy Tomcat
CMD ["catalina.sh", "run"]