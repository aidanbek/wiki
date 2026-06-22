Infrastructure Security

Защита инфраструктуры, на которой работают приложения: сети, операционные системы, контейнеры. Идея — defense in
depth: несколько слоёв защиты, чтобы пробой одного не открывал всё.

## Разделы

- [Network Security](network-security/index.md) — сегментация, firewall'ы, IDS/IPS.
- [OS Hardening](os-hardening/index.md) — сокращение поверхности атаки на уровне ОС.
- [Container Security](container-security/index.md) — безопасность образов и runtime контейнеров.

## Сквозные принципы

- Минимизация attack surface — отключить лишнее, оставить необходимое.
- Регулярные vulnerability scanning и penetration testing.
- Автоматизация через configuration management (Ansible, Chef) и immutable infrastructure.
