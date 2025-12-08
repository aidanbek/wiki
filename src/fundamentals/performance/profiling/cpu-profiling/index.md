Identifying где CPU time spent. Sampling profilers interrupt periodically, record call stack (low overhead,
statistical). Instrumentation profiles every function call (precise, high overhead). Metrics: self time (function only),
total time (including callees). Flame graphs visualize. Identifies: hot paths (optimization targets), unexpected
expensive operations. Tools: perf (Linux), Instruments (macOS), py-spy (Python), pprof (Go). Production profiling:
continuous profiling services (Pyroscope, Parca), minimal overhead. Look for: tight loops, inefficient algorithms,
excessive allocations.
