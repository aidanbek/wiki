Plan показывает как DB выполняет query: scan types, JOIN algorithms, order of operations. EXPLAIN ANALYZE дает actual
timings. Ключевые операции: Seq Scan (плохо на больших таблицах), Index Scan, Nested Loop vs Hash Join. Cost estimates
vs actual rows - признак stale statistics.
