SSE: server pushes updates к client over single HTTP connection. Unidirectional (server→client only). EventSource API (
browser), text/event-stream content type. Automatic reconnection, event IDs для resuming. Use cases: news feeds, stock
tickers, notifications. Simpler чем WebSockets, works over HTTP (firewall-friendly). Limitations: no client→server
messaging, HTTP/1.1 connection limits (6 per domain). Modern alternative: WebSockets.
