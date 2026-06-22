Isolation Levels

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
- Serializable самый строгий, но дороже (сериализационные конфликты, retry); реализация — MVCC (snapshot) или locking (см. acid, transactions).
