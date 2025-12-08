gRPC: high-performance RPC framework от Google. Uses Protobuf for serialization, HTTP/2 для transport. Service
definition в .proto файлы, code generation. Features: streaming (client, server, bidirectional), deadlines/timeouts,
authentication (TLS, token-based), metadata (headers). Use cases: microservices communication, mobile backends, polyglot
environments. Benefits: type safety, performance (binary, multiplexing), code generation. Trade-offs: not
browser-friendly (needs proxy), debugging harder (binary), firewall traversal. gRPC-Web для browsers.
