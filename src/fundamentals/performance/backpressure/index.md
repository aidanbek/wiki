# Backpressure

Управление потоком, когда producer быстрее consumer. Без него — неограниченный рост очередей, OOM, потеря сообщений.

## Реализации

- Blocking — producer ждёт; Dropping — сбрасывает нагрузку; Bounded buffer — отказ при заполнении.
- Signaling — TCP window, Reactive Streams (`Subscription.request(n)`).

## Где и как мониторить

- Stream processing, message queues, сетевые протоколы.
- Метрики: queue depth, rejection rate. Принцип — притормозить upstream, а не ронять downstream (см. load-shedding).
