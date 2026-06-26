# InfluxDB

Purpose-built time-series БД с собственным языком запросов (InfluxQL/Flux) и моделью tags + fields.

## Модель данных

- Measurement + tags (индексируемые метки, для фильтрации/группировки) + fields (значения) + timestamp.
- Schemaless: новые tags/fields добавляются на лету.

## Возможности

- Высокий write throughput, встроенные retention policies и downsampling (continuous queries/tasks).
- TICK-стек (Telegraf, InfluxDB, Chronograf, Kapacitor); популярен в monitoring/observability.

## Ограничения

- Ограниченные JOIN-возможности; высокая кардинальность tags бьёт по памяти/производительности.
- Смена языков/версий между линейками (1.x InfluxQL ↔ 2.x Flux ↔ 3.x) (см. [timescaledb](../timescaledb/index.md) как SQL-альтернативу).
