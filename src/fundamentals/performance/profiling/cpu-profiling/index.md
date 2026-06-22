CPU Profiling

Поиск, где тратится процессорное время.

## Подходы

- Sampling — периодически снимает call stack (низкий overhead, статистический).
- Instrumentation — пишет каждый вызов (точно, дорого).
- Метрики: self time (только функция) и total time (с вызываемыми).

## Инструменты

- perf (Linux), Instruments (macOS), py-spy (Python), pprof (Go); continuous profiling (Pyroscope, Parca).
- Ищи: tight loops, неэффективные алгоритмы, избыточные аллокации; визуализируй flame-графами (см. flame-grahps).
