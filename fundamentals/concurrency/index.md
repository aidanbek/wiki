Concurrency (Общее)

Способность системы выполнять несколько задач одновременно или с перекрытием по времени - фундаментальная концепция
современных систем. Concurrency (конкурентность) vs Parallelism (параллелизм): первая про структуру программы (multiple
threads могут выполняться), вторая про фактическое одновременное выполнение (multiple cores). Решает проблемы
responsiveness, throughput, resource utilization, но вводит сложность: race conditions, deadlocks, сложность отладки.
Критично для web servers, UI, распределённых систем, высоконагруженных приложений.

## Различия между схожими концепциями

### Mutex vs Semaphore (оба блокировки)

Mutex binary (locked/unlocked), ownership (только владелец unlock), для mutual exclusion одного ресурса. Semaphore
counting (0 to N), no ownership (любой может signal), для ограничения N одновременных доступов. Mutex защищает
критическую секцию, semaphore контролирует пул ресурсов. Binary semaphore технически может заменить mutex, но семантика
другая - mutex для ownership, semaphore для signaling. Mutex проще и быстрее для exclusive access, semaphore для
resource counting.

### Semaphore vs Monitor (высокоуровневые конструкции)

Semaphore низкоуровневый примитив (count + wait/signal), требует дисциплины использования. Monitor высокоуровневая
конструкция (mutex + condition variables), встроенная в язык. Monitor автоматически захватывает lock при входе в
synchronized метод, condition variables для wait/notify. Semaphore гибче но опаснее (легко забыть signal), Monitor
безопаснее (automatic lock management). Java synchronized - monitor, C++ std::mutex + std::condition_variable - building
blocks для monitor.

### Race Condition vs Data Race

Data race - specific тип race condition: concurrent доступ к shared memory, хотя бы один write, без синхронизации. Это
undefined behavior на уровне memory model. Race condition шире - любая зависимость от timing, включая логические ошибки
даже при правильной синхронизации (например, check-then-act с lock, но logic gap). Data race всегда bug и undefined,
race condition может быть логической ошибкой при корректной синхронизации. Предотвращение data race - синхронизация всех
доступов, race condition - правильная логика.

### Deadlock vs Livelock vs Starvation

Deadlock - потоки заблокированы навсегда, ждут друг друга, no progress. Livelock - потоки активны, но не прогрессируют,
constantly reacting to each other (два человека в коридоре танцуют влево-вправо). Starvation - поток не получает доступ
к ресурсу длительное время из-за scheduling (низкий приоритет, unfair lock). Deadlock requires intervention (kill
thread, restart), livelock может resolved сам (randomized backoff), starvation resolved fair scheduling.

### Threads vs Async/Await (модели конкурентности)

Threads - OS-level, preemptive multitasking, параллельное выполнение на разных cores. Async/await - cooperative
multitasking, single thread с переключением на I/O, не занимает thread пока ждёт. Threads для CPU-bound work (
параллельные вычисления), async для I/O-bound (network, disk). Async scalable - тысячи connections без тысяч threads.
Threads context switching overhead, async function coloring problem. Threads проще модель (sync код), async сложнее (
callbacks/promises/await).

### Reader-Writer Lock vs Mutex

RWLock позволяет concurrent readers, mutex exclusive всегда. RWLock сложнее implementation (track readers count, writer
flag), mutex простой. RWLock overhead оправдан только при high read/write ratio и long critical sections. Mutex uniform
latency, RWLock variable (readers fast, writers slow). Используй mutex по умолчанию, RWLock для proven read-heavy
scenarios. RWLock может привести к writer starvation если continuous reader flow.

### Thread Pool vs Creating Threads On-Demand

Thread pool amortizes overhead, reuses threads, bounds parallelism. On-demand unbounded threads, creation/destruction
cost per task. Pool для short-lived tasks (latency critical), on-demand для long-lived/blocking (не хочешь занимать pool
thread). Pool configuration critical (size, queue, rejection policy), on-demand simple но опасен (thread explosion under
load). Pool standard для servers/async, on-demand legacy или специфичные cases.

### Producer-Consumer vs Pipeline

Producer-Consumer single stage (one producer set, one consumer set, one buffer). Pipeline multiple stages (output одного
stage - input следующего), chain of producer-consumers. Producer-Consumer для decoupling и buffering, Pipeline для
decomposition сложной обработки. Pipeline может иметь backpressure через bounded buffers на каждом stage.
Producer-Consumer проще, Pipeline powerful для stream processing.

### Atomic Operations vs Locks

Atomic operations lock-free (non-blocking, no mutex), hardware-level primitives. Locks блокируют thread при contention.
Atomic для simple operations (counter, flag, reference swap), locks для compound operations (multiple variables,
invariants). Atomic high-performance, lock-free guarantees (progress, no deadlock), но сложнее корректно использовать (
ABA problem, memory ordering). Locks easier correctness, worse performance. Atomic building blocks для lock-free data
structures, locks для general-purpose synchronization.

### Pessimistic vs Optimistic Locking

Pessimistic - захват lock до доступа к данным (assume conflict, prevent it). Optimistic - читай без lock, проверяй
версию перед записью, retry если changed. Pessimistic для high contention, гарантирует exclusive access. Optimistic для
low contention, higher throughput без блокировок. Pessimistic блокирует readers, optimistic позволяет concurrent reads.
Databases: pessimistic locking (SELECT FOR UPDATE), optimistic (version column, CAS). Optimistic может иметь livelock
если continuous conflicts.

### Blocking vs Non-Blocking Algorithms

Blocking - thread может быть suspended пока ждёт (mutex, semaphore). Non-blocking - progress guarantee без suspension (
lock-free используют atomic CAS, retry loops). Wait-free strongest guarantee (bounded steps для любого thread),
lock-free weaker (system-wide progress, individual thread может starve), obstruction-free weakest (progress если runs
alone). Non-blocking для high-performance, real-time, но сложность implementation. Blocking проще, достаточно для
большинства cases.

### Concurrency vs Parallelism

Concurrency - структура программы (dealing with multiple things at once), может на single core через time-slicing.
Parallelism - выполнение (doing multiple things simultaneously), требует multiple cores. Concurrency про composition and
coordination, parallelism про execution. Можно иметь concurrency без parallelism (async на single thread), parallelism
требует concurrency design. Concurrency для responsiveness и structure, parallelism для performance и throughput.

### Коммуникация: Shared Memory vs Message Passing

Shared memory - threads читают/пишут общие переменные, требует синхронизацию. Message passing - изолированные компоненты
обмениваются сообщениями, no shared state. Shared memory low overhead, сложная синхронизация, tight coupling. Message
passing higher overhead (copying), простая модель (no locks), loose coupling. Shared memory для threads, message passing
для processes/actors/distributed. "Do not communicate by sharing memory; share memory by communicating" - Go philosophy.

### Когда что использовать

Mutex для simple критических секций, exclusive access. Semaphore для resource pools, limiting concurrency. RWLock для
read-heavy workloads (caches, configs). Atomic operations для counters, flags, lock-free где performance critical.
Thread pool для async task execution, bound parallelism. Producer-consumer для decoupling components, buffering. Избегай
shared mutable state когда возможно (immutability, message passing). Start simple (mutex), optimize если proven
bottleneck (RWLock, atomic, lock-free).
