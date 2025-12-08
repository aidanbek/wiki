Deferring initialization/loading until actually needed. Reduces startup time, memory footprint. Examples: lazy
properties (computed on first access), lazy imports (Python, dynamic imports JS), pagination (load data incrementally),
image lazy loading (viewport-triggered). Implementation: proxy/wrapper checks if loaded, loads on demand. Trade-off:
first access slower, complexity. Frameworks often support (Hibernate lazy associations, React lazy components). Avoid
premature optimization - profile first. Watch for N+1 problems (lazy loading в loops).
