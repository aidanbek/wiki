Restricting API request rate per client/IP/user. Prevents abuse, ensures fair usage, protects backend. Algorithms: token
bucket (flexible bursts), leaky bucket (smooth rate), fixed window (simple, boundary issues), sliding window (accurate,
complex). Response: 429 Too Many Requests, Retry-After header. Tiered limits (free/paid plans). Distributed rate
limiting (Redis counters). Monitoring: alert on limit hits (legitimate user growth vs attack). Documentation: publish
limits, error messages helpful.
