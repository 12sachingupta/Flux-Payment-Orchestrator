#!/bin/bash
set -e

echo "Setting up Flux project..."

# Setup Haskell Core Engine (using Stack)
echo "Building Haskell Core Engine..."
cd core
stack setup
stack build
cd ..

# Setup Rust Router
echo "Building Rust Router..."
cd router
cargo build --release
cd ..

# Setup Dashboard
echo "Setting up Dashboard..."
cd dashboard
npm install
cd ..

# Setup JavaScript SDK
echo "Setting up JavaScript SDK..."
cd sdks/javascript
npm install
cd ../..

echo "Setup complete!"
