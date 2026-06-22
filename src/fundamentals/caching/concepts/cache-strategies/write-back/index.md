# Write-Back (Write-Behind)

Запись немедленно в кэш, в DB — асинхронно позже (batched/delayed). Быстрые writes ценой eventual consistency.

## Как работает

- Кэш накапливает dirty entries; фоновый процесс flush'ит в DB батчами или по таймеру.
- Минимизирует write latency (пишем только в кэш), агрегирует записи (batch inserts).

## Trade-offs

- Для write-heavy нагрузок, где допустима eventual consistency.
- Риск потери данных при падении кэша до flush → нужен persistent cache (Redis AOF/RDB) или готовность терять.
