FROM rust:slim

# Download and install required native dependencies
RUN apt update
RUN apt install --no-install-recommends --yes pkgconf libssl-dev zlib1g-dev

# Download and install clippy and rustfmt
RUN rustup component add clippy rustfmt

# Build and install cargo-audit
RUN cargo install cargo-audit

# Clear cargo cache
RUN rm -rf /usr/local/cargo/registry
