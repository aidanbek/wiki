# Hexagonal Architecture (Ports & Adapters)

Организация кода, где бизнес-логика изолирована от внешнего мира через ports (интерфейсы) и adapters (реализации).
Паттерн Alistair Cockburn.

## Идея

- Core domain в центре, не зависит от UI, БД, фреймворков.
- Ports описывают, что нужно ядру (`IRepository`, `IEmailService`); adapters реализуют под конкретную технологию (
  `PostgresRepository`, `SendGridAdapter`).
- Dependency Inversion: ядро определяет интерфейсы, инфраструктура их реализует.

## Плюсы

- Тестируемость (mock-адаптеры), гибкость (замена БД/UI без изменения ядра), чистое разделение concerns.

## Trade-offs

- Больше кода (интерфейсы, адаптеры) ради долгосрочной maintainability.
- Родственники: Clean Architecture, Onion Architecture (см.
  [fundamentals/design-patterns/dependency-management/inversion-of-control](../../design-patterns/dependency-management/inversion-of-control/index.md)).
