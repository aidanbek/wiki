API Gateway

Единая точка входа перед микросервисами. Клиент обращается к шлюзу, а тот маршрутизирует запросы, прячет внутреннюю
архитектуру и берёт на себя сквозные задачи (auth, rate limiting), чтобы каждый сервис не реализовывал их сам.

## Ответственности

- Routing, authentication, rate limiting, кеширование, логирование.
- Трансформация request/response и protocol translation.

## Паттерны и реализации

- BFF (Backend for Frontend) — отдельный шлюз под каждый тип клиента.
- Aggregation — объединение нескольких вызовов сервисов в один ответ.
- Реализации: [Kong](kong/index.md), [Apigee](apigee/index.md); подробнее в [patterns](patterns/index.md).

## Риски

- Single point of failure — требуется HA.
- Потенциальное узкое место по производительности.
- Альтернатива: service mesh (распределённый, но сложнее).
