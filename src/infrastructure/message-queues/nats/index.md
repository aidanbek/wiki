# NATS

Лёгкий, очень быстрый брокер сообщений с акцентом на простоту. Базовый NATS — это fire-and-forget pub/sub без хранения;
надстройка **JetStream** добавляет персистентность, очереди и exactly-once-семантику.

## Модель

- Субъекты (subjects) с иерархией и wildcard'ами (`orders.*`, `orders.>`).
- Паттерны: pub/sub, request-reply (встроенный), queue groups для конкурентной обработки (балансировка между подписчиками).
- Core NATS: at-most-once, без диска — максимальная скорость, сообщение теряется, если нет получателя.

## JetStream

- Persistent **streams** с настраиваемым retention (по времени/размеру/числу), реплеи, durable consumers.
- At-least-once и exactly-once (через dedup по `Msg-Id`), ack'и, [DLQ](../../async-processing/patterns/dead-letter-queue/index.md)-подобная логика.
- Встроенные KV- и Object-store поверх streams.

## Когда выбирать

- Нужен простой, быстрый брокер с минимумом эксплуатации, request-reply и микросервисный обмен → NATS.
- Нужен лог событий с долгим хранением и реплеями огромного потока → скорее [Kafka](../kafka/index.md).
- Сложная маршрутизация AMQP, приоритеты → [RabbitMQ](../rabbitmq/index.md).
