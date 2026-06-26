# Indexing

Структуры данных, ускоряющие поиск без full table scan. Главный инструмент производительности чтения в БД — и главный
источник деградации записи, если им злоупотреблять.

## Базовый trade-off

- Faster reads ↔ slower writes + дополнительный storage (индекс нужно поддерживать на каждый INSERT/UPDATE/DELETE).
- Неправильные индексы хуже их отсутствия: стоимость поддержки без выигрыша на запросах.

## Типы

- B-tree (универсальный, range-запросы), hash (точное равенство), составные, частичные, покрывающие, GIN/GiST/BRIN.

## Практики выбора

- Индексировать колонки из WHERE/JOIN/ORDER BY с хорошей селективностью.
- Учитывать leftmost-prefix для составных; мониторить неиспользуемые и недостающие индексы.
- Проверять реальный эффект через EXPLAIN (см. [b-tree](b-tree/index.md), [compose-indexes](compose-indexes/index.md), [index-strategies](index-strategies/index.md), [query-optimization](../query-optimization/index.md)).
