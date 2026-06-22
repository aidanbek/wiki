Garbage Collection

Автоматическое освобождение недостижимой памяти. Главный компромисс — throughput vs latency.

## Алгоритмы

- Reference counting — просто, но не собирает циклы.
- Mark-and-sweep — паузы на трассировку; generational — большинство объектов умирает молодыми (отдельные young/old
  heaps).
- Incremental/concurrent — уменьшают паузы.

## На практике

- GC-паузы бьют по latency (критично для real-time); тюнинг: размер heap, соотношение поколений, выбор алгоритма.
- Современные: Java G1/ZGC, Go (concurrent), .NET (workstation/server); профилирование ловит GC pressure (см.
  memory-leaks, fundamentals/performance/profiling/memory-profiling).
