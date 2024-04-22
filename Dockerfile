FROM eclipse-temurin:22_36-jre-alpine

ARG argBasedPassword="default"
ARG argBasedVersion="1.8.5test5"
ARG spring_profile=""
ENV SPRING_PROFILES_ACTIVE=$spring_profile
ENV ARG_BASED_PASSWORD=$argBasedPassword
ENV APP_VERSION=$argBasedVersion
ENV DOCKER_ENV_PASSWORD="This is it"
ENV AZURE_KEY_VAULT_ENABLED=false
ENV SPRINGDOC_UI=false
ENV SPRINGDOC_DOC=false

RUN echo "2vars"
RUN echo "$ARG_BASED_PASSWORD"
RUN echo "$argBasedPassword"

RUN apk add --no-cache libstdc++

#RUN useradd -u 2000 -m wrongsecrets
RUN adduser -u 2000 -D wrongsecrets
USER wrongsecrets
