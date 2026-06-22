# Database Migrations

Управляемое, версионированное изменение схемы и данных. Цель — менять структуру БД предсказуемо, безопасно и в идеале
без простоя приложения.

## Темы

- [Schema-Versioning](schema-versioning/index.md) — миграции как упорядоченная история (Flyway/Liquibase/Alembic).
- [Zero-Downtime](zero-downtime/index.md) — expand-contract, обратная совместимость, online DDL.
- [Rollback-Strategies](rollback-strategies/index.md) — reversible vs forward-only, feature flags, бэкапы.
- [Data-Migration](data-migration/index.md) — перенос/преобразование данных при живом трафике.

## Принципы

- Каждое изменение обратно совместимо со старым кодом во время раскатки.
- Миграции неизменяемы после применения; деструктив — отдельным поздним шагом.
- Тестировать в staging на копии прод-данных (см. zero-downtime, schema-versioning).
