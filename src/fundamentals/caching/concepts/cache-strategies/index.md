Cache Strategies

Паттерны взаимодействия кэша с persistent storage при чтении и записи — когда данные попадают в кэш, когда обновляются,
как синхронизируются с источником.

## Два среза

- **Read strategies** — как обрабатывать cache miss (cache-aside, read-through).
- **Write strategies** — когда и как писать изменения (write-through, write-back, write-around).

## Что балансируем

- Consistency (синхронность с DB) ↔ latency операций ↔ complexity (логика в приложении vs в кэш-системе).
- Выбор зависит от требований к консистентности, производительности и fault tolerance.
