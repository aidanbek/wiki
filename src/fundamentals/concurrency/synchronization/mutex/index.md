# Mutex (Mutual Exclusion)

Блокировка для эксклюзивного доступа: в каждый момент mutex владеет только один поток.

## Семантика

- Lock/unlock: поток захватывает mutex перед критической секцией и освобождает после.
- Другие потоки блокируются на `lock()`, пока владелец не сделает `unlock()`.
- Ownership: разблокировать может только владелец (в отличие от semaphore).

## Подводные камни

- По сути binary semaphore (locked/unlocked).
- Риск deadlock при неправильном порядке захвата нескольких mutex'ов (см. [concurrency/concepts/deadlocks](../../concepts/deadlocks/index.md)).
