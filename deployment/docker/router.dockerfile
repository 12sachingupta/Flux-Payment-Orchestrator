# Use the official Rust image for building
FROM rust:1.65 as builder

WORKDIR /app

# Copy the router code into the container
COPY router/ ./router/

WORKDIR /app/router
RUN cargo build --release

# Use a minimal image for running the binary
FROM debian:buster-slim

WORKDIR /app

# Copy the built binary from the builder stage
COPY --from=builder /app/router/target/release/router .

# Expose a port if the router listens on one (adjust as needed)
EXPOSE 8081

CMD ["./router"]
