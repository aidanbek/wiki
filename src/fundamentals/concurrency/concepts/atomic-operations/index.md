Atomic Operations

Операции выполняющиеся как неделимое целое - либо полностью, либо не происходят, без возможности наблюдения
промежуточного состояния. Hardware-level atomicity: read/write aligned слов, compare-and-swap (CAS), fetch-and-add.
Software constructs: Atomic<T> классы (AtomicInteger, AtomicReference). Используются для lock-free алгоритмов, counters,
flags. CAS особенно важен - compareAndSet(expected, new) обновляет только если текущее значение == expected, возвращает
success. Basis для non-blocking data structures.
