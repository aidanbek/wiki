# Tools & Setup

Инструменты и практики, на которые опирается ежедневная разработка: контроль версий, автоматизация сборки и доставки,
управление конфигурацией и окружениями, рабочее место разработчика. Не про конкретный язык — про среду, в которой код
пишут, проверяют и катят в прод.

## Разделы

- [Git](git/index.md) — распределённый контроль версий, ветвления и workflow.
- [CI/CD](ci-cd/index.md) — автоматизация сборки, тестов и доставки (GitHub Actions, GitLab CI, Jenkins).
- [Configuration Management](configuration-management/index.md) — конфиг отдельно от кода: окружения, config servers, feature flags.
- [Environments](environments/index.md) — разделение dev/staging/production и их parity.
- [Editors](editors/index.md) — редакторы и IDE, LSP, удалённая разработка.
- [CLI Tools](cli-tools/index.md) — утилиты командной строки и автоматизация рутины.

## Сквозные принципы

- Pipeline as code, infrastructure as code, config в окружении (12-factor) — всё описано и воспроизводимо.
- Build once, deploy many: один артефакт проходит все окружения, меняется только конфиг.
- Секреты — вне репозитория, через хранилища CI/окружения.
