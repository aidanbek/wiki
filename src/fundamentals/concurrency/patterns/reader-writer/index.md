# Reader-Writer Lock

Оптимизация для частого чтения и редкой записи: много readers одновременно, writer — эксклюзивно.

## Как работает

- Readers не блокируют друг друга (shared access); writer блокирует всех.
- Reader не войдёт, пока внутри writer; writer ждёт выхода всех readers.
- Reader-preference vs writer-preference — кто приоритетнее при конкуренции.

## Когда использовать

- Read-heavy workloads: кэши, конфигурация, lookup-таблицы.
- Сложнее mutex; overhead оправдан только при высоком read/write ratio; риск writer starvation (см.
  [concurrency/synchronization/mutex](../../synchronization/mutex/index.md)).
