# SQL Fundamentals

Базовый язык работы с реляционными БД — декларативный: описываешь «что» нужно, а планировщик решает «как» получить.

## Запросы (DQL)

- `SELECT ... FROM ... WHERE ... GROUP BY ... HAVING ... ORDER BY ... LIMIT`.
- JOIN-ы: INNER, LEFT/RIGHT/FULL OUTER, CROSS; агрегаты: COUNT, SUM, AVG, MIN, MAX.
- Подзапросы, CTE (`WITH`), window functions (`OVER (...)`).

## Категории команд

- DDL: CREATE/ALTER/DROP — структура (таблицы, индексы, constraints).
- DML: INSERT/UPDATE/DELETE — данные; TCL: BEGIN/COMMIT/ROLLBACK — транзакции.
- DCL: GRANT/REVOKE — права доступа.

## Основы схемы

- Типы данных, constraints (NOT NULL, UNIQUE, CHECK, FOREIGN KEY), primary/foreign keys.
- Порядок логического выполнения: FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY (важно для понимания алиасов).
