Replication

Копирование данных на несколько узлов. Даёт масштабирование чтений, отказоустойчивость и географическую близость к
пользователям.

## Топологии

- Single-leader (master-replica): запись в лидера, чтение с реплик — самый частый вариант.
- Multi-leader и leaderless (Dynamo-style) — выше доступность, но конфликты записи.

## Режимы

- Synchronous: реплика подтверждает запись → строгая консистентность, но выше latency и риск блокировки.
- Asynchronous: быстрее, но replication lag → возможны stale reads с реплик.

## Реализация и нюансы

- Statement-based vs row-based vs logical replication.
- Failover на реплику при падении лидера (нужен механизм promotion); read-your-writes ломается из-за lag (см.
  load-balancing, scaling/sharding).
