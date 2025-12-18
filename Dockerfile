FROM rust:1.92-bullseye
LABEL authors = "Thomas Lysens"

ARG INTERFACE
ARG DEBUG

# Commands to run first before executing application
# Update apt list
RUN apt-get update && apt-get install -y net-tools libpcap-dev

WORKDIR /Bloodhound
RUN mkdir src
COPY Cargo.toml Cargo.lock ./
COPY src ./src

RUN cargo build --release

# Execute application
CMD [ "./target/release/bloodhound" ]