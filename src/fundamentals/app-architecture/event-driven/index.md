Event-Driven Architecture

Система построенная вокруг production, detection, consumption events - асинхронная коммуникация через события. События
как first-class citizens - immutable facts ("OrderPlaced", "PaymentReceived"), компоненты реагируют подписываясь.
Decoupling producers от consumers (не знают друг о друге), temporal decoupling (async processing), scalability (event
queue buffering). Event bus/broker (Kafka, RabbitMQ, EventBridge) центральный компонент. Patterns: event notification,
event-carried state transfer, event sourcing. Complexity - eventual consistency, трудность tracing flow, debugging,
managing subscriptions. Мощно для integration, IoT, real-time analytics, reactive systems.
