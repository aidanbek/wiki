Execution Plan

План показывает, как БД собирается выполнить запрос: какие сканы, какие алгоритмы JOIN, в каком порядке. Главный
инструмент диагностики медленных запросов.

## EXPLAIN / EXPLAIN ANALYZE

- `EXPLAIN` — оценочный план (cost, rows estimate).
- `EXPLAIN ANALYZE` — реальное выполнение с фактическими временами и количеством строк (buffers, loops).

## Ключевые операции

- Seq Scan (полный скан — плохо на больших таблицах), Index Scan / Index Only Scan, Bitmap Scan.
- JOIN-алгоритмы: Nested Loop (мало строк), Hash Join (равенство, большие наборы), Merge Join (отсортированные входы).

## На что смотреть

- Большое расхождение estimate vs actual rows → устаревшая статистика (ANALYZE/autovacuum).
- Неожиданный Seq Scan, дорогие сорты, спиллы на диск, высокие loops в Nested Loop (см. query-analysis).
