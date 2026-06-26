# Producer-Consumer

Развязка производителя и потребителя данных через буфер — асинхронная обработка, decoupling.

## Как работает

- Producer кладёт items в общую очередь, consumer их извлекает и обрабатывает.
- Bounded buffer блокирует: producer ждёт места, consumer ждёт данных.
- Реализация: `BlockingQueue`, semaphores (empty/full counts), condition variables.

## Где применяется

- Pipelines, message queues, event processing, I/O buffering (см. [concurrency/synchronization/semaphore](../../synchronization/semaphore/index.md)).
