Analyzing memory usage patterns. Heap profiling: allocation sites, live objects, allocation rate. Tools: Valgrind
massif, jemalloc profiling, Go pprof, Python memory_profiler. Metrics: allocated vs retained memory (high allocation
rate → GC pressure), allocation call stacks. Identifies: memory leaks, unexpected large allocations, retention paths.
Production: sample-based (low overhead). Heap dumps for detailed analysis (post-mortem). Look for: growing collections,
caching gone wrong, large intermediate objects, string concatenation in loops.
