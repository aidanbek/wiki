# Consul

Решение HashiCorp, объединяющее service discovery, health checking, KV-стор и service mesh в одном продукте (
см. [service-discovery](../index.md)).

## Архитектура

- **Gossip (Serf)** — для membership и обнаружения отказов узлов (см. [gossip-protocols](../../gossip-protocols/index.md)).
- **Raft** — для строгой согласованности данных в каталоге сервисов и KV (см. [raft](../../consensus/raft/index.md)).
- Агент на каждом узле; серверы держат состояние, клиенты проксируют запросы.
- Multi-datacenter из коробки.

## Возможности

- **Service catalog** с health checks — недоступные инстансы автоматически выпадают из выдачи.
- Встроенный **DNS-интерфейс** — сервисы резолвятся обычными DNS-запросами, без правки клиентов.
- **KV-стор** для конфигурации и feature flags.
- **Consul Connect** — service mesh с mTLS и intentions (политиками доступа между сервисами).

## Когда выбирать

- Нужен один инструмент сразу для discovery, конфигурации и mesh, особенно в multi-DC.
- Хорошо живёт вне Kubernetes и в гетерогенных средах (VM + контейнеры).
- Если нужен только KV-стор для Kubernetes — проще [etcd](../etcd/index.md); legacy-альтернатива — [zookeeper](../zookeeper/index.md).
