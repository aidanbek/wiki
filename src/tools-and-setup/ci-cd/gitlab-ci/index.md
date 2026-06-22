# GitLab CI

Встроенный в GitLab CI/CD, описывается в `.gitlab-ci.yml`. Не требует отдельного сервера — pipeline и репозиторий живут
в одной системе вместе с registry, окружениями и деплоем.

## Как работает

- Pipeline делится на stages (build → test → deploy); джобы внутри стадии идут параллельно.
- Runners исполняют джобы — shared (от GitLab) или self-hosted.
- Variables хранят секреты; условия (`rules`/`only`) запускают джобы по ветке, тегу или расписанию.

## Возможности

- Docker-in-Docker, artifacts, caching между джобами.
- Merge request pipelines и review apps — эфемерные окружения на каждый MR.
- Auto DevOps шаблоны под типовые стеки, интеграция с GitLab registry и деплоем в K8s.

## Когда использовать / подводные камни

- Логичный выбор, когда код уже в GitLab — меньше движущихся частей, чем у Jenkins.
- Конфигурация GitLab-специфична: переезд на другой хостинг = переписывание.
- Shared runners имеют лимиты минут; тяжёлые сборки лучше на self-hosted.
