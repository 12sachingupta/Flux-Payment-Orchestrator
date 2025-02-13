/// Enum representing different routing strategies.
#[derive(Debug)]
pub enum RoutingStrategy {
    RoundRobin,
    LeastConnections,
}

/// Selects a routing strategy and returns a descriptive message.
pub fn select_strategy(strategy: RoutingStrategy) -> &'static str {
    match strategy {
        RoutingStrategy::RoundRobin => "Selected RoundRobin strategy",
        RoutingStrategy::LeastConnections => "Selected LeastConnections strategy",
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_select_strategy() {
        let msg = select_strategy(RoutingStrategy::RoundRobin);
        assert_eq!(msg, "Selected RoundRobin strategy");
    }
}
