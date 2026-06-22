Semaphore

Счётчик доступа к ограниченному набору ресурсов — обобщение mutex на N одновременных доступов.

## Как работает

- `wait()`/`signal()` (P/V, acquire/release) декрементируют/инкрементируют счётчик; блокировка при count=0.
- Binary semaphore (0/1) эквивалентен mutex; counting semaphore (N) пускает N потоков — например, connection pool на 10.
- Нет ownership: signal может сделать любой поток, не только тот, что делал wait.

## Где применяется

- Producer-consumer, resource pools, ограничение concurrency (см. concurrency/synchronization/mutex).
