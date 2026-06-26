# HTTP Caching

Кэширование, встроенное в протокол HTTP и управляемое заголовками — браузеры и прокси кэшируют без знания семантики
приложения.

## Заголовки

- **Cache-Control** — `max-age`, `public`/`private`, `no-cache`.
- **ETag** / **Last-Modified** — для валидации.

## Revalidation

- Conditional requests (`If-None-Match` с ETag) → `304 Not Modified`, если контент не изменился.
- Агрессивное кэширование ускоряет, но рискует отдать stale; настройка критична (см. [system-level/cdn](../cdn/index.md),
  [system-level/reverse-proxy](../reverse-proxy/index.md)).
