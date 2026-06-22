Atomic Operations

Операция выполняется как неделимое целое — либо полностью, либо никак, без наблюдаемого промежуточного состояния.

## Как устроено

- Hardware-level: чтение/запись выровненных слов, compare-and-swap (CAS), fetch-and-add.
- Software: `Atomic<T>` (`AtomicInteger`, `AtomicReference`).
- CAS — ключевой: `compareAndSet(expected, new)` обновляет, только если текущее значение == `expected`.

## Зачем

- Lock-free counters, flags, основа non-blocking структур данных.
- Без блокировок при contention, но сложнее в корректном применении: ABA problem, memory ordering (см.
  concurrency/concepts/race-conditions).
