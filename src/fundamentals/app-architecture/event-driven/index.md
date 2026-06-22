# Event-Driven Architecture

Система, построенная вокруг производства, обнаружения и потребления событий — асинхронная коммуникация через события.

## Идея

- События — first-class citizens: immutable факты («OrderPlaced», «PaymentReceived»); компоненты реагируют,
  подписываясь.
- Центральный элемент — event bus/broker (Kafka, RabbitMQ, EventBridge).

## Плюсы

- Decoupling producers/consumers (не знают друг о друге), temporal decoupling (async), масштабируемость через
  буферизацию.

## Паттерны и сложности

- Event notification, event-carried state transfer, event sourcing.
- Сложности: eventual consistency, трудно трассировать поток, отладка, управление подписками. Силён для интеграции, IoT,
  real-time analytics (см. fundamentals/design-patterns/architectural/event-sourcing, infrastructure/message-queues).
