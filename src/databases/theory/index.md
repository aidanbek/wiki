# Database Theory

Фундаментальные понятия, определяющие гарантии БД: как ведут себя транзакции, что видят конкурентные операции и какие
компромиссы неизбежны в распределённых системах.

## Темы

- [ACID](acid/index.md) — атомарность, согласованность, изоляция, durability.
- [Transactions](transactions/index.md) — атомарные единицы работы, ACID vs BASE, распределённые транзакции.
- Isolation Levels — уровни изоляции и аномалии (dirty/non-repeatable/phantom reads).
- [CAP Theorem](cap-theorem/index.md) — выбор между consistency и availability при сетевых разделах.
- [Consistency Model](consistency-model/index.md) — спектр гарантий от linearizable до eventual.
- [Normalization](normalization/index.md) — нормальные формы и денормализация.

## Зачем это знать

- Осознанный выбор уровня изоляции и модели консистентности под конкретную задачу.
- Понимание trade-offs между корректностью, производительностью и доступностью (см. [consistency-patterns](../consistency-patterns/index.md), [scaling](../scaling/index.md)).
