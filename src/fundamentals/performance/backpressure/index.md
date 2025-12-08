Flow control when producer faster than consumer. Without backpressure: memory exhaustion (queues grow unbounded),
message loss. Implementations: blocking (producer waits), dropping (shed load), buffering with limits (bounded queues,
reject when full), signaling (TCP window, reactive streams). Reactive Streams specification standardizes (
Subscription.request(n)). Use cases: stream processing, message queues, network protocols. Monitoring: queue depth,
rejection rate. Design systems to handle backpressure gracefully - slow down upstream instead of crashing downstream.
