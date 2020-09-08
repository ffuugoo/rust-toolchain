FROM rust:alpine

RUN rustup component add clippy rustfmt

RUN cargo install cargo-audit --features=vendored-openssl
