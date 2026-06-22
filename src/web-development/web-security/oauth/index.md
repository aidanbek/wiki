OAuth

Фреймворк авторизации для делегированного доступа. Позволяет дать стороннему приложению ограниченный доступ к данным
пользователя без передачи ему пароля.

## Роли

- Resource owner (пользователь), client (приложение), authorization server, resource server.

## Flows

- Authorization code — серверные приложения.
- Client credentials — service-to-service.
- PKCE — мобильные/SPA.
- Implicit — устарел.

## Токены и расширения

- Access tokens (короткоживущие) + refresh tokens (долгоживущие).
- Scopes задают гранулярность прав.
- OAuth 2.0 — про авторизацию; OpenID Connect добавляет слой аутентификации.
