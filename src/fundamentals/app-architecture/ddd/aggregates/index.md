# Aggregates

Кластер связанных entities и value objects с чёткой границей и корневой сущностью (Aggregate Root) — consistency
boundary.

## Свойства

- Aggregate Root — единственная точка входа; внешний мир работает только с ней, не с внутренними entities.
- Пример: `Order` (root) содержит `OrderLine` — менять можно Order, напрямую OrderLine нельзя.
- Транзакция охватывает один aggregate (атомарность внутри), между aggregates — eventual consistency.

## Зачем

- Защита инвариантов: только root меняет внутреннее состояние, гарантируя бизнес-правила.
- Repository работает с Aggregate Roots, а не с внутренними сущностями.

## Определение границ

- Слишком большие → contention и блокировки; слишком маленькие → сложная координация и много транзакций.
- Правило большого пальца: меняй один aggregate за транзакцию (см. [fundamentals/app-architecture/ddd/domain-events](../domain-events/index.md),
  [entities-value-objects](../entities-value-objects/index.md)).
