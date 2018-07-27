Neo4J with [APOC (Awesome Procedures On Cypher)](https://guides.neo4j.com/apoc).

## Quickstart

To avoid manual interaction through the web console, this image
requires a new password for system user `neo4j` which is taken from
the environment variable `PASSWORD`. A sample startup command:


```
docker run -d -e PASSWORD=secret \
           -p 127.0.0.1:7474:7474 \
           -p 127.0.0.1:7687:7687 \
           -v /my/data:/data \
           mcreations/neo4j
```

## Host volume and port configuration

The volume `/data` can be mounted from the host and holds the ... data.

Port 7474 is where to find the Neo4J web console:
http://localhost:7474/ and the port 7687 is used by Cypher Shell and
the Neo4J browser. For details of the port configuration, please
consult the
[Neo4J manual](https://neo4j.com/docs/operations-manual/current/configuration/ports/).


## Cypher script import

This image is capable of importing
[Cypher](https://neo4j.com/cypher-graph-query-language/) files which
are placed in the directory `/import` and have the extension
`.cypher`.

All imported cypher files will be renamed to `*.cypher.imported` after
importing.

