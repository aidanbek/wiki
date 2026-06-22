# Interface Segregation Principle (ISP)

Клиенты не должны зависеть от методов, которые не используют — много узких интерфейсов лучше одного толстого.

## Суть

- `IWorker` с `work()` и `eat()`, где `Robot` реализует пустой `eat()` — нарушение. Раздели на `IWorkable` и
  `IFeedable`.
- Клиент зависит только от того, что реально нужно.

## Зачем

- Предотвращает fat interfaces, уменьшает coupling, повышает гибкость композиции (см. solid/single-responsibility,
  grasp/low-coupling).
