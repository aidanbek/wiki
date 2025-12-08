Удаление записи которая не использовалась дольше всего - предположение о temporal locality (недавно использованное будет
использовано снова). Реализация через linked list или ordered data structure, обновление позиции при каждом доступе.
Популярна и эффективна для большинства workloads - интуитивный алгоритм, хорошая hit rate. Overhead на обновление
порядка при каждом access. Redis, Memcached, OS page cache используют LRU или approximation (eviction sampling вместо
strict ordering). Слаб для sequential scans (один проход вытесняет весь кэш).
