Deploy новой версии к small subset users (5-10%), monitor metrics. If healthy, gradually increase percentage. If issues,
rollback affects минимум users. Requires: feature flags, metrics collection, automated rollback triggers. Reduces risk
large-scale failures. Популярен в high-traffic systems.
