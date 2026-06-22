Redis

In-memory key-value store с опциональной персистентностью. Отличается богатым набором структур данных, что делает его
не только кэшем, но и брокером/координатором.

## Структуры и возможности

- Типы: strings, lists, sets, sorted sets, hashes, streams, bitmaps, HyperLogLog, geo.
- Pub/sub, транзакции (MULTI/EXEC), Lua-скрипты, TTL/expire, atomic-операции.
- Single-threaded модель команд (но очень быстрая), репликация, Redis Cluster, persistence (RDB/AOF).

## Use cases

- Кэш, сессии, rate limiting, очереди/стримы, лидерборды (sorted sets), distributed locks, real-time аналитика.

## Подводные камни

- Данные в памяти — следить за объёмом и eviction-политикой (maxmemory-policy).
- Персистентность не равна durability БД; cluster имеет ограничения по multi-key операциям (см. memcached как более простой кэш).
