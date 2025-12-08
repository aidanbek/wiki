Four modes: unary (request-response), server streaming (one request, stream responses), client streaming (stream
requests, one response), bidirectional (both stream). Use cases: large data transfers (chunking), real-time updates (
stock tickers), log tailing, chat. Flow control built-in (backpressure). Challenges: error handling mid-stream, state
management, testing. Benefits: efficient (no polling), lower latency, resource usage.
