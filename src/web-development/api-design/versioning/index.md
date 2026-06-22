API Versioning

Как развивать API, не ломая существующих клиентов. Ключевое правило — ломающие изменения выносить в новую major-версию,
а внутри версии добавлять только аддитивно.

## Где указывать версию

- [URL versioning](url-versioning/index.md) — `/v1/users`; самый частый и явный.
- [Header versioning](header-versioning/index.md) — кастомный заголовок `API-Version: 2`.
- [Content negotiation](content-negotiation/index.md) — версия в `Accept`-заголовке.

## Принципы

- Только major-версии (v1, v2), не minor — мелкие изменения делать аддитивно.
- Параллельная поддержка версий для постепенной миграции + понятный deprecation timeline.
