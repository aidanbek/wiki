LRU (Least Recently Used)

Удаляет запись, не использовавшуюся дольше всех — ставка на temporal locality.

## Как работает

- Linked list / ordered структура; позиция обновляется при каждом доступе.

## Trade-offs

- Популярна и эффективна для большинства нагрузок, хорошая hit rate.
- Overhead на обновление порядка; слаба на sequential scans (один проход вымывает кэш).
- Redis, Memcached, OS page cache используют LRU или приближение (eviction sampling вместо строгого порядка).
