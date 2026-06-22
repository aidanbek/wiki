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
- Isolation на практике ослабляют ради производительности (см. isolation-level, transactions, cap-theorem).
