FROM openjdk:19-alpine
COPY target/cryptomator-cli-0.6.0-SNAPSHOT.jar /usr/bin/cryptomator.jar
RUN adduser -D cryptomator
USER cryptomator

VOLUME ["/vaults"]
ENTRYPOINT ["java", "-jar", "/usr/bin/cryptomator.jar"]
