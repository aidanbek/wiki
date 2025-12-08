Semaphore

Счётчик контролирующий доступ к ограниченному набору ресурсов - обобщение mutex на N одновременных доступов. Binary
semaphore (0/1) эквивалентен mutex. Counting semaphore (N) позволяет N потокам войти - connection pool на 10 соединений.
wait()/signal() (или P/V, acquire/release) операции декрементируют/инкрементируют счётчик. Блокировка при count=0,
разблокировка при signal(). Нет ownership - любой поток может signal, не только тот что wait. Используется для
producer-consumer, resource pools, limiting concurrency.
