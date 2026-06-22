# Web Security

Защита веб-приложений: подтвердить, кто пользователь (authentication), решить, что ему можно (authorization), и закрыть
типовые векторы атак на стороне браузера и сервера.

## Идентичность и доступ

- [Authentication](authentication/index.md) — проверка, кто это.
- [Authorization](authorization/index.md) — что аутентифицированному можно.
- [OAuth](oauth/index.md), [JWT](jwt/index.md) — делегированный доступ и токены.

## Защита от атак

- [XSS](xss/index.md) — внедрение скриптов на доверенный сайт.
- [SQL Injection](sql-injection/index.md) — внедрение SQL через ввод.
- [CSRF](csrf/index.md) — подделка запроса от имени пользователя.
- [CORS](cors/index.md) — браузерные правила кросс-доменных запросов.

## Сквозной принцип

- Fail closed — по умолчанию запрещать; проверять авторизацию на каждом endpoint, а не только аутентификацию.
