REST

REpresentational State Transfer — архитектурный стиль для API поверх HTTP. Ресурсы адресуются через URL и
манипулируются HTTP-методами, а сервер не хранит состояние между запросами.

## Принципы

- Client-server separation, stateless (каждый запрос самодостаточен).
- Cacheable, uniform interface (семантика HTTP-методов), layered system.

## Методы и коды

- GET (read), POST (create), PUT (replace), PATCH (partial update), DELETE.
- Status codes несут смысл: 200 OK, 201 Created, 404 Not Found, 500 Error.
- Идемпотентность: GET, PUT, DELETE безопасны для повтора.

## Детали

- HATEOAS — ответы содержат ссылки для навигации (на практике применяется редко).
- Формат: обычно JSON, XML — legacy.
