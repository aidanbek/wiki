Automatic memory reclamation. Algorithms: reference counting (simple, циклы не собираются), mark-and-sweep (pauses для
tracing), generational (most objects die young - separate young/old heaps), incremental/concurrent (reduce pause times).
GC pauses impact latency - critical для real-time systems. Tuning: heap size, generation ratios, GC algorithm selection.
Modern GCs: Java G1/ZGC (low pause), Go (concurrent), .NET (workstation/server modes). Trade-off: throughput vs latency.
Profiling identifies GC pressure (high allocation rate).
