Apache Avro

Бинарный формат, популярный в big data (Hadoop, Kafka). Схема описывается в JSON, данные кодируются компактно в бинарь.
Сильная сторона — гибкая эволюция схемы.

## Schema evolution

- Reader и writer схемы могут различаться — расхождение разрешается при чтении.
- Schema Registry (Confluent) хранит версии схем.
- Self-describing: схема встроена или указана по ссылке.

## Особенности

- Dynamic typing — не требует генерации кода.
- Use cases: data pipelines, event streams, долгосрочное хранение.
- В сравнении с [Protobuf](../protobuf/index.md): гибче schema evolution, но крупнее payload.
