FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y g++ && \
    apt-get clean

COPY hello_world.cpp /app/hello_world.cpp
WORKDIR /app

RUN g++ hello_world.cpp -o hello_world

CMD ["./hello_world"]
