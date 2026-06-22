Cache-Aside (Lazy Loading)

Приложение само управляет кэшем — самая популярная и простая стратегия.

## Как работает

- Чтение: try cache → miss → query DB → write to cache → return.
- Запись: update DB, затем invalidate/update cache.
- Кэш и DB независимы, координирует приложение.

## Trade-offs

- Resilient: кэш упал — приложение работает напрямую с DB; данные грузятся on-demand.
- Минусы: первый запрос всегда miss (cold cache), вся логика invalidation на приложении (ср. read-through).
