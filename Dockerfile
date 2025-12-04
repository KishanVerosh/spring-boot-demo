FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . .

# ✅ Give execute permission to mvnw
RUN chmod +x mvnw

# ✅ Build the JAR
RUN ./mvnw clean package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/*.jar"]
