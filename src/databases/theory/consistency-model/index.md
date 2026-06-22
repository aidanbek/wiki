Consistency Models

Гарантии порядка и видимости обновлений в распределённых/конкурентных системах. Определяют, какие результаты чтений
допустимы относительно записей.

## Спектр (от сильного к слабому)

- Linearizable (strongest): операции выглядят атомарными в реальном времени — дорого.
- Sequential: единый порядок для всех, но не обязательно совпадает с реальным временем.
- Causal: сохраняется причинно-следственный порядок (см. causal-consistency).
- Eventual (weakest): сходимость со временем, без гарантий порядка (см. eventual-consistency).

## Session-гарантии

- Read-your-writes, monotonic reads/writes, writes-follow-reads — промежуточные практичные гарантии.

## Выбор

- Зависит от требований use case: корректность vs latency/availability.
- Сильнее → больше координации и latency (см. cap-theorem, strong-consistency).
