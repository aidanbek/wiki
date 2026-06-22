Authentication

Проверка того, кто пользователь. Не путать с [авторизацией](../authorization/index.md): аутентификация отвечает на
«кто ты», авторизация — «что тебе можно».

## Методы

- Username/password — слабейший сам по себе.
- MFA — что-то, что знаешь + что имеешь/чем являешься.
- SSO (Single Sign-On), passwordless (magic links, WebAuthn).

## Сессии vs токены

- Session-based — сервер хранит сессию, в cookie лежит session ID.
- Token-based — JWT/OAuth токены, сервер stateless.

## Защита

- Хранение паролей: хеширование bcrypt/Argon2 с солью.
- Account lockout после неудачных попыток, CAPTCHA против brute force.
- Password reset через email-токен (ограниченный по времени, одноразовый).
