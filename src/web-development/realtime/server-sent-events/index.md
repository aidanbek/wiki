Server-Sent Events (SSE)

Сервер пушит обновления клиенту по одному долгому HTTP-соединению. Связь однонаправленная (server→client) — проще
[WebSockets](../websockets/index.md), когда обратный канал не нужен.

## Как устроено

- Browser API: EventSource; content type `text/event-stream`.
- Автоматическое переподключение, event IDs для возобновления с места обрыва.

## Применение и ограничения

- Use cases: новостные ленты, тикеры, уведомления.
- Работает поверх обычного HTTP — дружелюбно к firewall.
- Ограничения: нет канала client→server; лимит соединений HTTP/1.1 (6 на домен).
