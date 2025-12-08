Composing unified GraphQL schema from multiple subgraphs (services). Apollo Federation standard: services define types,
relationships via @key/@external directives. Gateway stitches schemas, routes queries. Benefits: single API endpoint,
clients query across services, teams own subgraphs independently. Challenges: schema coordination, backward
compatibility, N+1 queries (DataLoader batching helps). Suited for complex domains, multiple teams. Alternative to
monolithic GraphQL server.
