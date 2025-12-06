SWR (Stale-While-Revalidate)

Возврат stale данных немедленно + асинхронный refresh в фоне - оптимизация для UX. Cache-Control: max-age=300, stale-while-revalidate=3600 - данные fresh 5 минут, следующий час отдаются stale но trigger'ят refresh. Пользователь не ждёт, получает быстрый ответ, следующий запрос уже получит fresh. Баланс между скоростью и актуальностью - жертвуем немедленной freshness ради latency. React Query, SWR library, HTTP Cache-Control поддерживают. Идеально для данных где slight staleness приемлема.
