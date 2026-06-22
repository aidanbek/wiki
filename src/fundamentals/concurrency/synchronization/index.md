Synchronization

Механизмы координации доступа потоков к shared resources — защита от race conditions и порчи данных.

## Зачем

- Без синхронизации concurrent доступ к памяти даёт data corruption, lost updates, inconsistent state.
- Баланс между корректностью (защита данных) и performance (минимум блокировок).

## Примитивы

- Locks, semaphores, monitors, atomic operations — разные уровни гранулярности и гарантий.
