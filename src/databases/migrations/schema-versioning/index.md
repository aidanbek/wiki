Tracking schema evolution. Migration files с timestamps/versions (Flyway, Liquibase). Applied migrations записываются в
schema_migrations table. Prevents re-applying, enforces order. Branching стратегии: linear vs feature branches (merge
conflicts possible).
