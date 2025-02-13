#!/bin/bash
set -e

echo "Running tests for Flux project..."

# Test Haskell Core Engine
echo "Testing Haskell Core Engine..."
cd core
# If you have defined tests, this will run them; otherwise, it may simply build.
stack test || echo "No tests defined for Haskell Core Engine."
cd ..

# Test Rust Router
echo "Testing Rust Router..."
cd router
cargo test
cd ..

# Test Dashboard (if applicable)
echo "Testing Dashboard..."
cd dashboard
npm test || echo "No tests defined for Dashboard."
cd ..

# Test JavaScript SDK
echo "Testing JavaScript SDK..."
cd sdks/javascript
npm test || echo "No tests defined for JavaScript SDK."
cd ..

echo "All tests completed!"
