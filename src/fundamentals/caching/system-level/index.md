# System-Level Caching

Кэширование на уровне инфраструктуры и сети — прозрачное для приложения, управляется HTTP-заголовками и конфигурацией.

## Иерархия

- browser → CDN → reverse proxy → origin server; у каждого уровня свои размер, latency и управление.

## Зачем

- Снижает нагрузку на backend, уменьшает latency для пользователей, экономит bandwidth.
- Требует правильных cache headers (Cache-Control, ETag, Expires) для баланса freshness и hit rate (см.
  system-level/http-caching).
