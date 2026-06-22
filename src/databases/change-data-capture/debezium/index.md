Debezium (Log-based CDC)

Open-source CDC платформа поверх Kafka Connect. Читает transaction logs (PostgreSQL WAL, MySQL binlog, MongoDB oplog) и
публикует change events в Kafka. Не нагружает БД запросами — читает то, что СУБД и так пишет для репликации.

## Как работает

- Connector подключается как replication client (logical replication slot в Postgres, replica в MySQL).
- Initial snapshot существующих данных, затем streaming инкрементальных изменений из лога.
- Каждое событие содержит `before`/`after` состояние строки + метаданные (LSN, timestamp, table, op-type).

## Гарантии

- At-least-once delivery, сохраняет порядок изменений в рамках партиции.
- Поддержка schema evolution, фильтрации таблиц/колонок, SMT-трансформаций.
- Exactly-once возможен в связке с Kafka transactions на стороне consumer.

## Когда использовать / подводные камни

- Replication, cache invalidation, event sourcing, ETL, синхронизация микросервисов (см. outbox pattern в соседнем разделе patterns).
- Требует управления replication slots — забытый slot копит WAL и переполняет диск.
- Tombstone-события для DELETE; нужно корректно обрабатывать на стороне consumer.
- Завязка на Kafka/Kafka Connect — операционная сложность (можно через Debezium Server без Kafka).
