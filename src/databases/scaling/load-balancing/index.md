# Database Load Balancing

Распределение запросов между несколькими узлами БД — прежде всего read-запросов по репликам, чтобы снять нагрузку с
лидера.

## Стратегии распределения

- Round-robin, least connections, latency-based, weighted (по мощности узла).
- Разделение read/write: записи на лидера, чтения на реплики.

## Консистентность

- Session affinity / read-from-leader для read-your-writes (из-за replication lag реплики отдают stale данные).
- Health checks для исключения отстающих/упавших реплик из пула.

## Реализация

- Proxy-based: HAProxy, ProxySQL, PgBouncer/Pgpool, Vitess.
- DNS-based балансировка (грубее, кэширование DNS мешает быстрому failover) (см. [replication](../replication/index.md), [connection-pooling](../../performance/connection-pooling/index.md)).
