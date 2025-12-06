Invalidation (Общее)

Механизмы удаления или обновления устаревших данных из кэша - одна из двух hard problems в Computer Science ("cache invalidation and naming things"). Trade-off между freshness и performance: частая invalidation гарантирует актуальность но снижает hit rate, редкая максимизирует hit rate но рискует stale данными. Стратегии: time-based (TTL), event-based (purge/ban), validation-based (revalidation). Сложность растёт в распределённых системах - нужна координация между кэш-узлами.
