# NOTE: This is not a production ready Dockerfile. 
# Utilize this only for development purposes

# Use a container image that has both Gradle and the JDK
FROM gradle:5.0.0-jdk8-alpine

# Switch to the `gradle` user defined by our container image
USER gradle

# Copy over the project directory into the container
COPY --chown=gradle:gradle . /java-and-docker

# Set our working directory to our project directory that we set above
WORKDIR /java-and-docker

# Run the build
RUN gradle build

# Run the jar file
# Since we are using JDK8 we set some additional flags to be more container aware
CMD ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-jar", "build/libs/java-and-docker-1.0.jar"]