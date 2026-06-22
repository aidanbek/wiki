# Security Headers

HTTP-заголовки ответа, повышающие безопасность на стороне браузера. Дешёвые wins: добавляются на уровне reverse
proxy/CDN, без правок приложения.

## Ключевые заголовки

- `Strict-Transport-Security` (HSTS) — принудительный HTTPS.
- `Content-Security-Policy` (CSP) — защита от XSS через whitelist ресурсов.
- `X-Frame-Options` — защита от clickjacking.
- `X-Content-Type-Options` — запрет MIME sniffing.
- `Referrer-Policy` — контроль передачи referrer.

## Практика

- Проверка конфигурации: securityheaders.com.
- CSP — самый сложный заголовок; начинать в report-only режиме, чтобы не сломать сайт.
