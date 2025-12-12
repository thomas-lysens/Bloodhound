FROM ubuntu:22.04
LABEL authors = "Thomas Lysens"

ARG INTERFACE
ARG DEBUG

# Commands to run first before executing application
# Update apt list
RUN apt-get update && apt-get install net-tools

WORKDIR /app

COPY ./target/debug/bloodhound.exe /app

# Execute application
CMD [ "ifconfig" ]
CMD [ "./bloodhound" ]
#CMD[ "./bloodhound", "--interface ${ INTERFACE }", "--debug ${ DEBUG }" ]