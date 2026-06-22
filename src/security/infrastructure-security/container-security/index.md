Container Security

Защита контейнеризированных нагрузок. Делится на три фронта: что внутри образа, как контейнер работает в runtime и
откуда он вообще взялся (supply chain).

## Безопасность образа

- Сканирование на уязвимости перед публикацией.
- Минимальные base images (distroless, Alpine) — меньше образ, меньше attack surface.
- Никаких секретов внутри образа; подписанные образы (signed images).

## Runtime

- Запуск как non-root, read-only filesystem, resource limits.
- Security contexts (AppArmor, SELinux), network policies ограничивают общение подов.
- RBAC для доступа к K8s API; admission controllers (OPA, Kyverno) форсят политики.

## Supply chain

- Проверка provenance (откуда образ).
- SBOM (Software Bill of Materials) — состав образа для отслеживания уязвимостей.
