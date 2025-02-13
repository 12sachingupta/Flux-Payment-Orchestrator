// router/src/main.rs

// Import the library code
use router::routing::engine;

fn main() {
    println!("Router is running.");

    // Example usage of the engine function from your library:
    let result = engine::process_route("/home");
    println!("Result: {}", result);
}
