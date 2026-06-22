XSS (Cross-Site Scripting)

Внедрение вредоносных скриптов в доверенный сайт. Скрипт выполняется в браузере жертвы от имени сайта — отсюда кража
сессий, учётных данных, дефейс.

## Типы

- Stored — скрипт сохранён в БД и отдаётся всем.
- Reflected — приходит через параметры URL.
- DOM-based — внедрение на стороне клиентского JS.

## Защита

- Output encoding (HTML entities) — главный приём.
- Content Security Policy — whitelist источников скриптов.
- Input validation и sanitization-библиотеки (DOMPurify); template engines с авто-экранированием.
- Никогда не вставлять недоверенные данные в JavaScript-контексты, HTML-атрибуты, CSS.
