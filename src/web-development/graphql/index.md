Query language и runtime для APIs. Single endpoint, clients request exactly needed data. Schema-first: types, queries,
mutations, subscriptions defined в SDL (Schema Definition Language). Resolvers fetch data. Benefits: no over-fetching (
mobile-friendly), no under-fetching (avoids N+1 via DataLoader), strongly typed, introspection (tooling, docs
auto-generated). Challenges: caching complexity (varies per query), N+1 problem (batching/DataLoader required), query
complexity attacks (depth/cost limiting). Use cases: mobile apps, complex domains, BFFs. REST alternative, not
replacement.
