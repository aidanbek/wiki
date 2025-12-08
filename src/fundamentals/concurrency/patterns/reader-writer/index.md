Reader-Writer Lock

Оптимизация для сценариев с частым чтением и редкой записью - множественные readers одновременно, exclusive writer.
Readers не блокируют друг друга (shared access), writer блокирует всех (exclusive access). Reader не может войти пока
writer внутри, writer ждёт пока все readers выйдут. Reader-preference vs writer-preference политики - кто приоритетнее
при конкуренции. Повышает concurrency для read-heavy workloads - кеши, конфигурация, lookup tables. RWLock более сложен
чем mutex, overhead оправдан только при high read/write ratio.
