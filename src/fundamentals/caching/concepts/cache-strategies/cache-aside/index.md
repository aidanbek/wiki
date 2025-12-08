Cache-Aside (Lazy Loading)

Приложение напрямую управляет кэшем - check cache, if miss then load from DB and populate cache. Самая популярная и
простая стратегия. При чтении: try cache → miss → query DB → write to cache → return. При записи: update DB,
invalidate/update cache. Кэш и DB независимы, приложение координирует. Resilient - кэш падает, приложение работает с DB.
Данные загружаются on-demand (только что реально нужно). Недостаток: первый запрос всегда miss (cold cache), сложность
invalidation ложится на приложение.
