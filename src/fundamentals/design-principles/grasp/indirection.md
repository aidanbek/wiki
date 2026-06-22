Indirection

Введи промежуточный объект, чтобы уменьшить прямую связь между компонентами.

## Примеры

- Adapter между сторонней библиотекой и твоим кодом, Repository между domain и persistence, Mediator между «коллегами».

## Зачем

- Слой изоляции защищает от изменений: замена внешней зависимости не затрагивает бизнес-логику.
- Основа архитектурных слоёв и hexagonal architecture (см. app-architecture/hexagonal, grasp/protected-variations).
