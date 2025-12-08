Automatically stops calling failing service. States: Closed (normal) → Open (failing, reject immediately) → Half-Open (
test recovery). Fail fast reduces latency, prevents cascading failures. Thresholds: error rate, consecutive failures.
Timeout before attempting recovery. Libraries: Hystrix, Resilience4j.
