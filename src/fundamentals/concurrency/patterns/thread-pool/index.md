Thread Pool

Пул предсозданных потоков для переиспользования вместо создания нового потока на задачу - амортизация overhead
создания/уничтожения. Task queue + fixed/dynamic число worker threads. Submit task → queue → idle thread забирает →
executes → возвращается в pool. Bounded queue для backpressure, rejection policies при переполнении. Контроль
parallelism level, предотвращение thread explosion. Web servers, async I/O, parallel algorithms. Настройка pool size
критична - слишком мало (недоиспользование CPU), слишком много (context switching overhead).
