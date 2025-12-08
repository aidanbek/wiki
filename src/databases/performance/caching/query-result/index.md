Кэширование результатов queries в application layer (Redis, Memcached). Invalidation strategies: TTL, event-based,
write-through. Cache key = query hash + params. Снижает DB load, но adds complexity (cache coherency, thundering herd).
