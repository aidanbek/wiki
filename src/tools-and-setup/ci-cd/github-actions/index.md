# GitHub Actions

CI/CD, встроенный прямо в GitHub-репозиторий. Workflow описывается в YAML и запускается по событиям (push, PR, schedule,
manual). Главное преимущество — marketplace переиспользуемых actions и тесная интеграция с GitHub.

## Как работает

- Workflow в `.github/workflows/*.yml` срабатывает на event (push, pull_request, schedule, workflow_dispatch).
- Job выполняется на runner; шаги — это `run` (команды) или `uses` (готовый action из marketplace).
- Matrix builds прогоняют джобу на нескольких ОС / версиях языка параллельно.

## Возможности

- Secrets и environments с protection rules (ручное подтверждение деплоя).
- Self-hosted runners для приватной инфраструктуры и спец-железа.
- Status checks, deployments, нативная сборка контейнеров, релизы, GitHub Pages.

## Когда использовать / подводные камни

- Дефолт, если код уже на GitHub — проще Jenkins, сравним с GitLab CI.
- Щедрый free tier для публичных репозиториев; для приватных — лимиты минут.
- Сторонние actions из marketplace — это чужой код в pipeline: пинить версии по SHA, ревьюить права.
- Привязка к GitHub: миграция на другой хостинг означает переписывание workflow.
