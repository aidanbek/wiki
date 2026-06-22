Domain Events

Immutable события, описывающие что-то значимое, что произошло в домене — факты в прошедшем времени («OrderPlaced»,
«PaymentCompleted»).

## Свойства

- First-class доменные понятия, названия из ubiquitous language, содержат относящиеся к событию данные.
- Генерируются aggregates при изменении состояния, публикуются после commit транзакции.

## Зачем

- Decoupling: другие aggregates/контексты подписываются и реагируют.
- Eventual consistency между aggregates (`OrderPlaced` → уменьшить остаток), интеграция контекстов, audit trail, фундамент event sourcing.

## Эффект

- Делают систему reactive и явной в бизнес-процессах, дают temporal decoupling.
- Хранение в event store даёт полную историю (см. fundamentals/design-patterns/architectural/event-sourcing, aggregates).
