Kong

Open-source API gateway на базе Nginx. Функциональность набирается плагинами, поэтому шлюз легко расширять под нужные
задачи.

## Архитектура

- Plugin architecture: auth (JWT, OAuth), rate limiting, логирование, трансформации.
- Декларативная конфигурация + admin API для управления.
- Хранилище: Kong DB (PostgreSQL/Cassandra) или DB-less mode.

## Возможности

- Clustering для масштабирования; сильная производительность.
- Kubernetes-native через Ingress controller.
- Kong Konnect (enterprise) добавляет service catalog и аналитику.
- Плагины community + commercial.
