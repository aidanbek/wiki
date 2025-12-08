Restricting request rate для preventing abuse/overload. Algorithms: token bucket, leaky bucket, fixed/sliding window.
Per-user, per-IP, global limits. 429 status code response. Protects backend от spikes, DOS attacks. Distributed rate
limiting нуждается в shared state (Redis).
