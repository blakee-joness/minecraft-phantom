FROM ubuntu:latest

ENV HOST=
ENV PORT=
ENV PHANTON_TAG=

RUN apt-get update
RUN apt-get install -y wget
RUN wget https://github.com/jhead/phantom/releases/download/${PHANTON_TAG}/phantom-linux-x64
RUN chmod +x phantom-linux-x64

CMD ./phantom-linux-x64 ${HOST}:${PORT}
