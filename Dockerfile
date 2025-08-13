# Java 17이 설치된 경량 리눅스 이미지 사용
FROM openjdk:17-jdk

# 앱 JAR 복사 (Gradle 기준 build/libs, Maven이면 target)
COPY build/libs/*.jar app.jar

# 컨테이너 시작 시 JAR 실행
ENTRYPOINT ["java","-jar","/app.jar"]