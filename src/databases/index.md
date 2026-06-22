Databases

Системы хранения и доступа к данным — фундамент почти любого приложения. Раздел охватывает теорию (гарантии, модели
согласованности), типы хранилищ (реляционные, NoSQL, time-series), а также практику: производительность, масштабирование,
миграции и change data capture.

## Разделы

- Theory — ACID, транзакции, isolation levels, CAP, модели консистентности, нормализация.
- Relational — реляционные СУБД (PostgreSQL, MySQL) и основы SQL.
- NoSQL — key-value, document, column-family, graph, search.
- Time-Series — БД для метрик/IoT/телеметрии.
- Data-Modeling — OLTP vs OLAP, star/snowflake схемы.
- Performance — индексы, оптимизация запросов, кэширование, connection pooling, N+1.
- Scaling — вертикальное/горизонтальное масштабирование, репликация, партиционирование, шардирование.
- Migrations — версионирование схемы, zero-downtime, откаты, перенос данных.
- Consistency-Patterns — strong/eventual/causal consistency.
- Change-Data-Capture — отслеживание изменений (Debezium, outbox).

## Как выбирать БД

- От паттернов доступа и требований к консистентности (см. cap-theorem, oltp-vs-olap), а не от моды.
- Чаще всего: одна основная реляционная БД + специализированные хранилища (кэш, поиск, аналитика) под конкретные задачи.
