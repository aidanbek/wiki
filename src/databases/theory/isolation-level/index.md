# Isolation Levels

Определяют, какие эффекты конкурентных транзакций видны друг другу. Чем строже уровень, тем меньше аномалий, но ниже
конкурентность.

## Уровни (по возрастанию строгости)

- Read Uncommitted < Read Committed < Repeatable Read < Serializable.

## Аномалии и защита от них

- Dirty read: чтение незакоммиченных данных (запрещён начиная с Read Committed).
- Non-repeatable read: одна строка меняется между чтениями (запрещён с Repeatable Read).
- Phantom read: меняется набор строк по условию (запрещён с Serializable; в Postgres RR тоже частично).

## Практика

- Default часто Read Committed (Postgres) или Repeatable Read (MySQL InnoDB).
- Serializable самый строгий, но дороже (сериализационные конфликты, retry); реализация — MVCC (snapshot) или locking (
  см. [acid](../acid/index.md), [transactions](../transactions/index.md)).

## Аномалии за рамками стандарта

- Lost update: два read-modify-write затирают друг друга (классика `balance = balance - 100` без блокировки).
- Write skew: каждая транзакция видит валидный снимок, но вместе ломают инвариант (два врача снимают дежурство, когда нужен хотя бы один).
- Snapshot isolation (Postgres RR) ловит dirty/non-repeatable/phantom, но **не** write skew — нужен Serializable (SSI) либо явный `SELECT … FOR UPDATE`.

## Частые ошибки

- Считать уровни одинаковыми между СУБД: имя одно, поведение разное (Postgres RR = snapshot isolation; MySQL InnoDB RR использует next-key/gap-locks).
- Read-modify-write без `FOR UPDATE`/атомарного `UPDATE … SET x = x + …` → потерянное обновление.
- Поднимать уровень до Serializable «на всякий случай» без обработки retry на ошибку сериализации — приложение будет падать под нагрузкой.
- Полагаться на длинные транзакции для консистентности вместо узких границ и идемпотентных операций.
