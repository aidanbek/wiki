Race Condition

Ситуация когда поведение программы зависит от relative timing/interleaving выполнения потоков - non-deterministic bugs. Классика: count++ не атомарен (read-modify-write), два потока одновременно - lost update. Другой пример: check-then-act (проверка if (balance > 0) и снятие денег - между ними может вклиниться другой поток). Проявляются редко, сложно воспроизвести, heisenbug эффект (исчезают при debugging). Предотвращение: синхронизация критических секций, atomic operations, immutability, message passing вместо shared state.
