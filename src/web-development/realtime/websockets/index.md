Full-duplex communication channel over single TCP connection. Handshake: HTTP upgrade request, switches protocol.
Binary/text frames. Use cases: chat, collaborative editing, gaming, live dashboards. Socket.io library abstracts
WebSocket + fallbacks (long polling). Challenges: scaling (sticky sessions или shared state), load balancing (need
protocol-aware LB), reconnection logic, security (validate origin, auth tokens). Heartbeats detect dead connections.
