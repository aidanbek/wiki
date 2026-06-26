# Consistency Patterns

Практические модели согласованности данных в распределённых системах — какой компромисс между корректностью,
доступностью и latency выбрать.

## Темы

- [Strong Consistency](strong-consistency/index.md) — все чтения видят последнюю запись (CP в CAP); дорого, но корректно.
- [Eventual Consistency](eventual-consistency/index.md) — реплики сходятся со временем (AP в CAP); доступно и быстро, но возможны stale reads.
- [Causal Consistency](causal-consistency/index.md) — сохраняется причинно-следственный порядок; промежуточный вариант.

## Как выбирать

- От требований use case: банкинг/остатки → strong; ленты/счётчики/кэш → eventual; чаты/коллаборация → causal.
- Часто в одной системе сочетают: strong для критичных сущностей, eventual для остального (см. [cap-theorem](../theory/cap-theorem/index.md),
  [consistency-model](../theory/consistency-model/index.md)).
