# Base image of Java runtime
FROM openjdk:8-jdk-alpine

# Making port 9990 available outside container
EXPOSE 9990

# The application's jar file
ARG JAR_FILE=target/flight-booking-1.0.jar

# Add the application's jar to the container
ADD ${JAR_FILE} flightbooking.jar

# Run the jar file after waiting for 30 seconds for mysql db to initialize
CMD ["sh", "-c", "sleep 30 && java -Djava.security.egd=file:/dev/./urandom -jar /flightbooking.jar"]