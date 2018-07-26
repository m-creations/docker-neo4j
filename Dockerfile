## -*- docker-image-name: "mcreations/neo4j" -*-

FROM neo4j:3.4.4

LABEL maintainer="Kambiz Darabi <darabi@m-creations.net>"
LABEL vendor="mcreations"

ENV PASSWORD "neo4j"

ADD image/root /

ENTRYPOINT ["/start-neo"]

