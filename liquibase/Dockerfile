FROM maven:3.8.5-openjdk-17-slim

LABEL maintainer="koziarevskyi@gmail.com"

# Create app directory
RUN mkdir -p /liquibase
WORKDIR /liquibase

COPY pom.xml /liquibase/pom.xml
COPY liquibase.yml /liquibase/liquibase.yml
ADD pet-first-auth-changesets.tar.gz /liquibase

# Add entrypoint script to replace properties to access database
ADD replace-liquibase-properties.sh /liquibase/replace-liquibase-properties.sh
RUN chmod +x /liquibase/replace-liquibase-properties.sh

ENTRYPOINT ["/liquibase/replace-liquibase-properties.sh"]
CMD ["mvn", "liquibase:update", "-N"]
