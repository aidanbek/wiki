# Tail Latency

Высокие перцентили (p95, p99, p99.9) — выбросы, портящие пользовательский опыт. Среднее обманчиво: прячет худшие случаи.

## Причины

- GC-паузы, CPU throttling, network retransmits, lock contention, queueing, медленные зависимости.
- Усиливается в fan-out: при 100 backends p99 каждого становится «медианой» запроса.

## Митигации

- Timeouts, hedged requests (дубль на другой сервер после задержки), canary requests, отказ от batching.
- Мониторь перцентильные гистограммы, а не средние; SLO обычно по p99 (см. [percentiles](../percentiles/index.md)).
