# Sử dụng hình ảnh chính thức của OpenJDK 21 làm hình ảnh gốc
FROM openjdk:21-jdk-slim

# Đặt biến ARG cho tên file JAR
ARG JAR_FILE=Library-Management-BE-0.0.1-SNAPSHOT.jar

# Tạo thư mục làm việc trong container
WORKDIR /app

# Sao chép file JAR từ máy chủ vào thư mục làm việc trong container
COPY ${JAR_FILE} app.jar

# Chỉ định lệnh chạy khi container khởi động
ENTRYPOINT ["java", "-jar", "app.jar"]
