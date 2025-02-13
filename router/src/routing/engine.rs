/// A simple router engine that processes a route.
pub fn process_route(path: &str) -> String {
    format!("Processing route for path: {}", path)
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_process_route() {
        let result = process_route("/home");
        assert!(result.contains("/home"));
    }
}
