# Use a base image with Java and Maven pre-installed
FROM maven:latest

# Set the working directory in the container
WORKDIR /app

# Clone the repository into the container
RUN git clone https://github.com/JeremyTsaii/leetcode-stats-api.git .
# Run Maven clean command
RUN mvn clean

# Run Maven package command
RUN mvn package

# Expose the port used by Apache Tomcat
EXPOSE 8080

# Command to serve the Apache Tomcat servlet container
CMD ["mvn", "spring-boot:run"]
