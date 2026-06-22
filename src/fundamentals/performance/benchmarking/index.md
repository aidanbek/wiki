Benchmarking

Систематическое измерение производительности.

## Виды и методология

- Micro — изолированные операции (функция/алгоритм); Macro — end-to-end под реалистичной нагрузкой.
- Warm-up (JIT, кэши), много итераций (статзначимость), контроль переменных (фон, frequency scaling), реалистичные
  данные.

## Инструменты и метрики

- JMH (Java), Benchmark.js (JS), pytest-benchmark (Python), wrk/ab (HTTP).
- Throughput (ops/sec), latency (p50/p95/p99), CPU/memory.
- Подводные камни: dead code elimination, constant folding, cache effects; сравнивай baseline vs optimized, лови
  регрессии в CI (см. percentiles).
