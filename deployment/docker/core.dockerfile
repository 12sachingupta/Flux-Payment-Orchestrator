# Use the official Haskell image as the base
FROM haskell:8.10.7

# Set the working directory
WORKDIR /app

# Copy the core project files
COPY core/ ./core/

# Change directory to core and build the project using Stack
WORKDIR /app/core
RUN stack setup && stack build --system-ghc --no-install-ghc

# Expose port (if your application listens on one)
EXPOSE 8080

# Run the application
CMD ["stack", "exec", "flux"]
