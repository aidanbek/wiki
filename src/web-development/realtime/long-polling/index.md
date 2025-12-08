Client makes HTTP request, server holds open until data available. Response sent, client immediately opens new request.
Simulates real-time, works через firewalls/proxies. Higher latency чем WebSockets (new connection overhead). Server
resources (open connections). Fallback когда WebSockets unavailable. Libraries like Socket.io use as transport. Replaced
by modern alternatives (SSE, WebSockets), но still useful в constrained environments.
