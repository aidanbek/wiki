Thundering Herd

Множество процессов/потоков одновременно просыпаются и конкурируют за один ресурс после события.

## Пример

- Истёк кэш — 1000 запросов разом идут в БД (cache stampede) → исчерпание ресурсов, каскадные сбои.

## Митигации

- Request coalescing (первый запрос блокирует, остальные ждут), probabilistic early expiration (jitter против
  синхронного истечения).
- Rate limiting, mutex/semaphore вокруг дорогой операции; для `accept()` — `SO_REUSEPORT`.
- Мониторь всплески соединений к БД и latency после инвалидации кэша (см. fundamentals/caching/concepts/invalidation).
