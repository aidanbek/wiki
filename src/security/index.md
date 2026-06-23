# Security

Защита систем и данных по принципу defense in depth — несколько независимых слоёв вместо одной стены. Темы покрывают
доступ, шифрование, сетевую и инфраструктурную безопасность, а также типовые веб-уязвимости и соответствие требованиям.

## Разделы

- [OWASP Top 10](owasp-top-10/index.md) — самые распространённые классы веб-уязвимостей.
- [Access Control](access-control/index.md) — RBAC/ABAC, least privilege.
- [Encryption](encryption/index.md) — шифрование at rest / in transit, управление ключами.
- [Certificates](certificates/index.md) — TLS/SSL и управление сертификатами.
- [mTLS](mtls/index.md) — взаимная аутентификация сервисов.
- [Zero Trust](zero-trust/index.md) — «никому не доверяй по умолчанию».
- [Threat Modeling](threat-modeling/index.md) — систематический поиск угроз на этапе проектирования.
- [Vulnerability Management](vulnerability-management/index.md) — сканирование и патчинг.
- [Supply Chain Security](supply-chain/index.md) — безопасность зависимостей и сборки.
- [SSRF](ssrf/index.md) — server-side request forgery.
- [DDoS Mitigation](ddos-mitigation/index.md) — защита от отказа в обслуживании.
- [Password Hashing](password-hashing/index.md) — безопасное хранение паролей.
- [Infrastructure Security](infrastructure-security/index.md) — hardening ОС, сети, контейнеров.
- [Security Headers](security-headers/index.md) — защитные HTTP-заголовки.
- [Secret Scanning](secret-scanning/index.md) — поиск утёкших секретов.
- [Compliance](compliance/index.md) — GDPR, HIPAA, PCI-DSS.

## Принципы

- Defense in depth — несколько слоёв защиты; пробитие одного не открывает всё.
- Least privilege — минимально необходимые права по умолчанию.
- Secure by default, fail closed — при ошибке отказывать в доступе, а не открывать его.
