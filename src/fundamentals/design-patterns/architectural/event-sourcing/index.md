# Event Sourcing

Вместо хранения текущего состояния сохраняются все события его изменения; состояние восстанавливается проигрыванием
(replay) событий.

## Идея

- Не одна запись `Order`, а лог: `OrderCreated`, `ItemAdded`, `PaymentProcessed`.
- Текущее состояние = свёртка событий; для скорости — periodic snapshots.

## Плюсы

- Полная история (audit trail), time travel, возможность построить любые проекции, естественен для event-driven систем.

## Trade-offs

- Сложность: версионирование событий, производительность replay, eventual consistency проекций.
- События иммутабельны — изменение схемы требует upcasting; часто идёт в паре с CQRS (см. [cqrs](../cqrs/index.md), [event-driven](../../../app-architecture/event-driven/index.md)).
