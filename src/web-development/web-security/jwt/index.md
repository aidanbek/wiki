# JWT (JSON Web Token)

Компактный URL-safe формат токена. Самодостаточен: подпись позволяет проверить токен без обращения к хранилищу на
сервере (stateless-валидация).

## Структура

- header (алгоритм) + payload (claims) + signature (HMAC/RSA).
- Claims: iss (issuer), sub (subject), exp (expiration), iat (issued at).

## Риски

- Кража токена через XSS.
- Нет встроенного механизма отзыва — спасает короткий срок жизни.
- Payload виден (base64, не шифруется) — не класть в него секреты.

## Хранение

- httpOnly cookies (защита от XSS) или localStorage (защита от CSRF) — компромисс.
- Refresh tokens для длительных сессий.
