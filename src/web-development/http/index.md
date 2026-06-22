# HTTP

HyperText Transfer Protocol — протокол прикладного уровня, на котором стоит весь веб. Модель проста: клиент шлёт
request, сервер отвечает response.

## Структура сообщения

- Request: метод + URL + заголовки + тело.
- Response: status code + заголовки + тело.
- Методы: GET, POST, PUT, DELETE, PATCH, HEAD, OPTIONS.

## Status codes

- 1xx informational, 2xx success, 3xx redirect, 4xx client error, 5xx server error.
- Заголовки несут метаданные: Content-Type, Authorization, Cache-Control.

## Версии протокола

- HTTP/1.1 — persistent connections, chunked transfer.
- HTTP/2 — multiplexing, server push, сжатие заголовков.
- HTTP/3 — поверх QUIC (UDP), быстрее установка соединения.
