DDD (Domain-Driven Design)

Подход к разработке сложных систем через глубокое понимание домена и моделирование бизнес-логики (методология Eric
Evans).

## Ключевые идеи

- Ubiquitous Language — единый язык разработчиков и domain-экспертов; код отражает язык бизнеса.
- Фокус на core domain, rich domain model вместо anemic.

## Strategic patterns

- Bounded Contexts, context mapping — организация больших систем и границы (часто = границы микросервисов).

## Tactical patterns

- Entities, Value Objects, Aggregates, Domain Events, Repositories — моделирование внутри контекста.

## Когда оправдан

- Сложные домены с богатой бизнес-логикой; overkill для CRUD-приложений (см. bounded-contexts, aggregates, fundamentals/design-patterns/architectural/repository).
