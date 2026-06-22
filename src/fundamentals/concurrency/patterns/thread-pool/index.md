# Thread Pool

Пул предсозданных потоков для переиспользования вместо создания потока на каждую задачу — амортизация overhead.

## Как работает

- Task queue + фиксированное/динамическое число worker-потоков.
- Submit task → очередь → свободный поток забирает → выполняет → возвращается в пул.
- Bounded queue для backpressure, rejection policies при переполнении.

## Настройка

- Размер пула критичен: мало → недозагрузка CPU, много → overhead на context switching.
- Web-серверы, async I/O, параллельные алгоритмы (см. fundamentals/performance/backpressure).
