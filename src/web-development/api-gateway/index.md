Single entry point для microservices. Responsibilities: routing, authentication, rate limiting, request/response
transformation, protocol translation, caching, logging. Hides internal architecture, simplifies client code. Patterns:
backends for frontends (BFF - gateway per client type), aggregation (combine multiple service calls). Risks: single
point of failure (HA required), performance bottleneck. Alternatives: service mesh (distributed, но more complex).
Enables centralized policies, monitoring.
