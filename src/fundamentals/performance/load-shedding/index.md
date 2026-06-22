# Load Shedding

Намеренный сброс/отклонение запросов при перегрузке — деградировавший сервис лучше упавшего.

## Стратегии

- Random drop (просто), priority-based (сохранить критичный трафик), adaptive (по latency/error rate), graceful
  degradation (урезать фичи, не доступность).
- Реализация: rate limiting, circuit breakers, health checks балансировщика.

## Поведение

- Ответ `503` + `Retry-After`; лучше, чем неограниченная очередь (растущая latency, OOM).
- Требует от клиентов корректных retry (exponential backoff); алерт на rejection rate (см. backpressure).
