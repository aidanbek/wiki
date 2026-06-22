PostgreSQL

Open-source объектно-реляционная СУБД с акцентом на корректность, соответствие стандартам и расширяемость. Часто
выбор по умолчанию для новых проектов.

## Возможности

- Полноценный ACID, MVCC для конкурентности без блокировок чтения.
- Богатые типы: JSON/JSONB, arrays, ranges, hstore, custom types; full-text search; GIS через PostGIS.
- Мощная индексация: B-tree, GiST, GIN, BRIN, SP-GiST; partial/expression/covering индексы.
- Расширяемость: extensions (TimescaleDB, pg_stat_statements, pgvector), logical replication.

## Сильные стороны

- Enterprise-фичи без лицензионных costs, активное развитие, строгая семантика.

## Подводные камни

- MVCC + dead tuples → нужен autovacuum/vacuum; bloat при интенсивных update.
- Каждое соединение — отдельный backend-процесс → нужен пул (PgBouncer) при многих коннектах (см. connection-pooling).
