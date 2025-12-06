Synchronization (Общее)

Механизмы координации доступа потоков к shared resources, предотвращающие race conditions и обеспечивающие консистентность данных. Без синхронизации concurrent доступ к памяти приводит к data corruption, lost updates, inconsistent state. Балансировка между correctness (защита данных) и performance (минимизация блокировок). Primitives: locks, semaphores, monitors, atomic operations - разные уровни гранулярности и гарантий.
