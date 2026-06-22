# Change Data Capture (CDC)

Отслеживание изменений в БД (INSERT/UPDATE/DELETE) для реакции на них в near-realtime. Позволяет другим системам
узнавать об изменениях данных без постоянного опроса и без правок в бизнес-коде приложения.

## Подходы

- Triggers — БД-триггеры пишут изменения в audit-таблицу. Просто, но overhead на каждую запись и связанность со схемой.
- Polling (query-based) — периодический опрос по `updated_at`/версии. Просто, но latency, нагрузка и пропуск удалений.
- Log-based — чтение transaction log (WAL/binlog/oplog). Эффективно, низкая нагрузка, ловит все изменения включая
  DELETE.

## Use cases

- Репликация и синхронизация между сервисами/хранилищами.
- Cache invalidation, обновление search-индексов (Elasticsearch).
- Event sourcing, аналитика/ETL в data warehouse.

## Подводные камни

- Порядок и идемпотентность событий на стороне consumer.
- Обработка schema changes и удалений (tombstone).
- Initial snapshot + ongoing streaming для полного состояния. Инструменты: Debezium, Maxwell, встроенный logical
  decoding.
