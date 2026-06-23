# API Design

Проектирование API так, чтобы им было удобно пользоваться и развивать. Сквозные вопросы любого публичного API:
как версионировать, как отдавать данные постранично, как защититься от перегрузки и как документировать.

## Разделы

- [Versioning](versioning/index.md) — как менять API, не ломая клиентов.
- [Pagination](pagination/index.md) — как отдавать большие наборы данных порциями.
- [Rate Limiting](rate-limiting/index.md) — ограничение частоты запросов.
- [Documentation](documentation/index.md) — машиночитаемое описание контракта (OpenAPI/Swagger).
- [Idempotency Keys](idempotency/index.md) — безопасное повторение POST-запросов.
- [Problem Details](problem-details/index.md) — стандартный формат ошибок (RFC 9457).
- [HATEOAS](hateoas/index.md) — гипермедиа-ссылки как навигация по API.

## Принципы

- API-first — сначала контракт, потом реализация.
- Обратная совместимость: добавлять, а не ломать; ломающие изменения — через новую версию.
