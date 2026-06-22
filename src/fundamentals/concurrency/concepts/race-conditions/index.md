Race Condition

Поведение программы зависит от относительного timing/interleaving потоков — недетерминированные баги.

## Примеры

- `count++` не атомарен (read-modify-write): два потока → lost update.
- check-then-act: между `if (balance > 0)` и снятием денег вклинивается другой поток.

## Особенности и защита

- Проявляются редко, плохо воспроизводятся (heisenbug — исчезают под отладчиком).
- Защита: синхронизация критических секций, atomic operations, immutability, message passing вместо shared state (см.
  concurrency/synchronization/mutex, concurrency/concepts/deadlocks).
