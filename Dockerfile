FROM rust:1.58.0-alpine3.14

ARG NODE_VERSION=14.19.0-r0
ARG NPM_VERSION=7.17.0-r0
ARG WASM_PACK_VERSION=0.10.2

RUN apk add --no-cache \
      nodejs=${NODE_VERSION} \
      npm=${NPM_VERSION} \
      zlib \
      musl-dev \
      openssl \
      openssl-dev \
      perl \
      make \
    && cargo install wasm-pack --version=${WASM_PACK_VERSION} \
    && rustup target add wasm32-unknown-unknown \
    && rustup component add rustfmt \
    && rustup component add clippy \
    && chmod -R 777 /usr/local/cargo/registry

ENV USER=wasm-pack

RUN adduser --uid 1000 --disabled-password "${USER}"

WORKDIR /work
USER wasm-pack
ENTRYPOINT ["wasm-pack"]
