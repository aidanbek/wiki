CORS (Cross-Origin Resource Sharing)

Браузерный механизм, управляющий кросс-доменными HTTP-запросами. По умолчанию same-origin policy запрещает JavaScript
читать ответы с другого origin (протокол+домен+порт); CORS-заголовки позволяют сервру явно разрешить такой доступ.

## Как работает

- Preflight (OPTIONS-запрос) для непростых запросов.
- Заголовки: `Access-Control-Allow-Origin` (whitelist доменов), `Access-Control-Allow-Methods`,
  `Access-Control-Allow-Credentials` (cookies).

## Безопасность

- Wildcard (`*`) небезопасен вместе с credentials.
- Неправильно настроенный CORS открывает путь к эксплуатации XSS — не ослаблять политику бездумно.
