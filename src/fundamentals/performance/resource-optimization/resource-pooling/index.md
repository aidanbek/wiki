Resource Pooling

Предварительное выделение и переиспользование дорогих ресурсов: соединения с БД, потоки, HTTP-клиенты, буферы.

## Зачем

- Убирает overhead на создание/уничтожение; создание connection дорого (auth, handshake).

## Настройка

- Размер пула — баланс утилизации и потребности в concurrency.
- Стратегии: lazy creation, pre-warming, max limit (против исчерпания), idle timeout (сжатие при простое).
- Нужна синхронизация (предпочтительны lock-free очереди); thread pools против thread explosion (см. fundamentals/concurrency/patterns/thread-pool).
