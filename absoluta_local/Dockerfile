FROM eclipse-temurin:21-jre

WORKDIR /app

COPY app.jar ./
COPY lib ./lib
COPY secured ./secured
COPY run.sh /run.sh
RUN chmod +x /run.sh

RUN apt-get update && apt-get install -y jq && rm -rf /var/lib/apt/lists/*

CMD [ "/run.sh" ]
