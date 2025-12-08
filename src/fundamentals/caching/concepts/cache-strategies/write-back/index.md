Write-Back (Write-Behind)

Запись в кэш немедленно, в DB асинхронно позже (batched/delayed) - быстрые writes, eventual consistency. Кэш накапливает
dirty entries, фоновый процесс flush'ит в DB (batch или по таймеру). Минимизирует write latency (только кэш), aggregates
writes (batch inserts). Риск data loss при падении кэша до flush. Используется для write-heavy workloads где можно
терпеть eventual consistency. Примеры: write-back cache в БД, session storage, analytics events. Требует persistent
cache (Redis AOF/RDB) или acceptance потери при сбое.
