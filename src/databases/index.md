# Databases

Системы хранения и доступа к данным — фундамент почти любого приложения. Раздел охватывает теорию (гарантии, модели
согласованности), типы хранилищ (реляционные, NoSQL, time-series), а также практику: производительность,
масштабирование,
миграции и change data capture.

## Разделы

- [Theory](theory/index.md) — ACID, транзакции, isolation levels, CAP, модели консистентности, нормализация.
- [Relational](relational/index.md) — реляционные СУБД (PostgreSQL, MySQL) и основы SQL.
- [NoSQL](nosql/index.md) — key-value, document, column-family, graph, search.
- [Time-Series](time-series/index.md) — БД для метрик/IoT/телеметрии.
- [Data-Modeling](data-modeling/index.md) — OLTP vs OLAP, star/snowflake схемы.
- [Performance](performance/index.md) — индексы, оптимизация запросов, кэширование, connection pooling, N+1.
- [Scaling](scaling/index.md) — вертикальное/горизонтальное масштабирование, репликация, партиционирование, шардирование.
- [Migrations](migrations/index.md) — версионирование схемы, zero-downtime, откаты, перенос данных.
- [Consistency-Patterns](consistency-patterns/index.md) — strong/eventual/causal consistency.
- [Change-Data-Capture](change-data-capture/index.md) — отслеживание изменений (Debezium, outbox).

## Как выбирать БД

- От паттернов доступа и требований к консистентности (см. cap-theorem, oltp-vs-olap), а не от моды.
- Чаще всего: одна основная реляционная БД + специализированные хранилища (кэш, поиск, аналитика) под конкретные задачи.
