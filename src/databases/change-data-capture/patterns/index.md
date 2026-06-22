# CDC Patterns

Паттерны надёжной доставки изменений и эволюции данных при использовании CDC.

## Outbox pattern

- Бизнес-операция и запись события в outbox-таблицу — в одной транзакции (атомарность).
- CDC/relay читает outbox и публикует события в брокер; решает проблему dual-write (БД + Kafka без 2PC).
- Гарантирует, что событие появится тогда и только тогда, когда коммитнулись данные.

## Log-based vs query-based

- Log-based: чтение transaction log, ловит все изменения, низкая нагрузка, near-realtime.
- Query-based: polling таблицы изменений по timestamp/версии; проще, но пропускает удаления и промежуточные состояния.

## Snapshot + streaming

- Initial snapshot существующих данных, затем streaming инкрементальных изменений — полное и актуальное состояние.

## Эволюция схемы и удаления

- Schema changes: версионирование событий, backward/forward совместимость (Avro + Schema Registry).
- Deletes: tombstone-события (key с null-value) для очистки в downstream-системах и compaction в Kafka.
