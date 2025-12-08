Паттерны композиции классов и объектов в крупные структуры, сохраняя гибкость и эффективность. Решают как объекты
связываются друг с другом, как строить сложные иерархии, как изолировать клиентов от сложности. Используют
наследование (class patterns) и композицию (object patterns) для создания новой функциональности. Общая тема - упрощение
взаимоотношений между сущностями.

## Различия между схожими паттернами

### Adapter vs Bridge vs Facade vs Proxy

Adapter конвертирует несовместимые интерфейсы (retrofit existing). Bridge разделяет абстракцию от реализации (design for
flexibility). Facade упрощает сложную подсистему (convenience layer). Proxy контролирует доступ (same interface, added
control). Adapter для интеграции, Bridge для parallel hierarchies, Facade для simplification, Proxy для lazy
loading/security/remote access.

### Decorator vs Proxy

Оба оборачивают объект и реализуют тот же интерфейс. Decorator добавляет responsibilities/features (behaviour
enhancement). Proxy контролирует доступ без изменения поведения (access control). Decorator для stackable enhancements (
можно множество), Proxy обычно один уровень. Decorator видимый клиенту (явное оборачивание), Proxy прозрачный (клиент не
знает). Decorator добавляет, Proxy ограничивает/оптимизирует.

### Composite vs Decorator

Composite для древовидных структур part-whole, единообразная работа с leaf и composite. Decorator для добавления
функциональности через wrapping. Composite про структурную композицию (много детей), Decorator про поведенческую (один
wrapped). Composite.operation() делегирует всем детям, Decorator.operation() делегирует wrapped плюс added behaviour.
Могут комбинироваться - декорировать композит.
