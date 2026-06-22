Database Migrations

Управляемое, версионированное изменение схемы и данных. Цель — менять структуру БД предсказуемо, безопасно и в идеале
без простоя приложения.

## Темы

- Schema-Versioning — миграции как упорядоченная история (Flyway/Liquibase/Alembic).
- Zero-Downtime — expand-contract, обратная совместимость, online DDL.
- Rollback-Strategies — reversible vs forward-only, feature flags, бэкапы.
- Data-Migration — перенос/преобразование данных при живом трафике.

## Принципы

- Каждое изменение обратно совместимо со старым кодом во время раскатки.
- Миграции неизменяемы после применения; деструктив — отдельным поздним шагом.
- Тестировать в staging на копии прод-данных (см. zero-downtime, schema-versioning).
