# ACID

Четыре свойства, гарантирующие надёжность транзакций — классическая модель RDBMS.

## Свойства

- Atomicity: транзакция выполняется целиком или не выполняется вовсе (all-or-nothing, откат при сбое).
- Consistency: переход из одного валидного состояния в другое (соблюдение constraints, инвариантов).
- Isolation: конкурентные транзакции не мешают друг другу (степень зависит от isolation level).
- Durability: подтверждённые данные переживают сбои (питания, краша).

## Реализация

- Write-ahead logging (WAL) для atomicity + durability.
- Locking и/или MVCC для isolation; constraints/triggers для consistency.

## Контекст

- ACID противопоставляют BASE (eventual consistency) распределённых систем.
- Isolation на практике ослабляют ради производительности (см. [isolation-level](../isolation-level/index.md), [transactions](../transactions/index.md), [cap-theorem](../cap-theorem/index.md)).

## Частые ошибки

- Считать, что ACID = «всегда serializable»: default-уровень обычно слабее (Read Committed), часть аномалий разрешена.
- Полагаться на Durability при `synchronous_commit = off` / async-репликации: COMMIT вернулся ≠ данные на диске реплики.
- Путать ACID-C (инварианты схемы, constraints) с CAP-C (linearizability) — разные понятия.
- Долгие транзакции держат блокировки и раздувают MVCC (table bloat, отставание VACUUM в Postgres).

## Когда ослабляют

- На больших масштабах/распределённо: жертвуют strong isolation или durability ради latency и доступности (BASE).
- Кросс-сервисные операции редко делают одной ACID-транзакцией — вместо этого saga/outbox и согласованность по границам (см. [consistency-patterns](../../consistency-patterns/index.md)).
