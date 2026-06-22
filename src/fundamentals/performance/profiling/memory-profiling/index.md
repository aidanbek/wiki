# Memory Profiling

Анализ паттернов использования памяти.

## Что смотрим

- Allocation sites, live objects, allocation rate; allocated vs retained (высокий allocation rate → GC pressure).
- Пути удержания (retention paths) для поиска утечек.

## Инструменты и сигналы

- Valgrind massif, jemalloc profiling, Go pprof, Python memory_profiler; sample-based в проде, heap dumps для
  post-mortem.
- Ищи: растущие коллекции, неправильный кэш, крупные промежуточные объекты, конкатенацию строк в циклах (см.
  fundamentals/performance/memory-management/memory-leaks).
