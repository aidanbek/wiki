# OWASP Top 10

Список десяти самых распространённых и опасных классов уязвимостей веб-приложений, обновляемый OWASP. Это не чек-лист
«всё покрыли — безопасны», а отправная точка и общий язык для приоритизации рисков.

## Категории (редакция 2021)

- **A01 Broken Access Control** — доступ к чужим данным/действиям (см. [access-control](../access-control/index.md)).
- **A02 Cryptographic Failures** — слабое/отсутствующее шифрование чувствительных данных.
- **A03 Injection** — SQL/NoSQL/командные инъекции из недоверенного ввода.
- **A04 Insecure Design** — изъяны на уровне архитектуры (лечит [threat-modeling](../threat-modeling/index.md)).
- **A05 Security Misconfiguration** — дефолтные пароли, лишние сервисы, открытые админки.
- **A06 Vulnerable & Outdated Components** — устаревшие зависимости (см. [supply-chain](../supply-chain/index.md)).
- **A07 Identification & Authentication Failures** — слабая аутентификация, сессии.
- **A08 Software & Data Integrity Failures** — небезопасные обновления, десериализация.
- **A09 Logging & Monitoring Failures** — атаку не видно из-за отсутствия логов/алертов.
- **A10 SSRF** — server-side request forgery (см. [ssrf](../ssrf/index.md)).

## Как использовать

- Брать как baseline для review и security-тестов, а не как полный охват угроз.
- Для конкретного контекста есть отдельные списки: API Security Top 10, Mobile, LLM Top 10.
