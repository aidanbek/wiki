# OS Hardening

Сокращение поверхности атаки на уровне операционной системы. Логика проста: чего нет или что выключено — то нельзя
атаковать.

## Практики

- Отключить лишние сервисы, удалить дефолтные учётки.
- Применять security patches, настроить firewall, включить audit logging.
- Сильные пароли, шифрование файловой системы.

## Стандарты (baselines)

- CIS Benchmarks и STIG (Security Technical Implementation Guides) — готовые наборы настроек.

## Поддержание

- Автоматизация через configuration management (Ansible, Chef).
- Регулярные compliance-сканы.
- Immutable infrastructure упрощает: проблемный хост заменяют, а не патчат.
