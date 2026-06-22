# SQL Injection

Внедрение вредоносного SQL через пользовательский ввод. Пример: `username = "admin' OR '1'='1"` обходит аутентификацию.
Последствия — утечка и удаление данных, privilege escalation.

## Защита

- Parameterized queries / prepared statements — самое надёжное: SQL и данные разделены.
- ORM — автоматическое экранирование.
- Input validation — whitelist допустимых символов.
- Least privilege для учёток БД — ограничить blast radius при пробое.

## Правило

- Никогда не склеивать пользовательский ввод в строку SQL.
- WAF (Web Application Firewall) ловит типовые паттерны как дополнительный слой.
