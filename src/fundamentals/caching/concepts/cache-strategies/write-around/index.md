Write-Around

Запись в DB минуя кэш - избегание cache pollution данными которые не будут читаться часто. При записи: write directly to
DB, invalidate cache if exists. При чтении: cache-aside или read-through. Оптимизация для workloads где writes редко
читаются сразу (logs, analytics, bulk imports). Уменьшает cache churn, сохраняет место для hot data. Недостаток: сразу
после записи чтение будет miss. Комбинируется с cache-aside для reads. Простая invalidation - не нужно update cache on
write.
