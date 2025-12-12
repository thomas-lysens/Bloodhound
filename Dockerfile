FROM ubuntu:latest
LABEL authors="thoma"

ENTRYPOINT ["top", "-b"]