# Deadlock

Два или более потока заблокированы навсегда — каждый ждёт ресурс, удерживаемый другим (circular wait).

## Четыре условия (нужны все)

- Mutual exclusion, hold and wait, no preemption, circular wait.
- Классика: A держит Lock1 и ждёт Lock2, B держит Lock2 и ждёт Lock1.

## Предотвращение и обнаружение

- Lock ordering (всегда захватывать в одном порядке), timeout на lock, lock-free алгоритмы, избегать nested locking.
- Обнаружение: deadlock detection, анализ thread dumps.
- Рядом: **livelock** — потоки активны, но не прогрессируют; **starvation** — поток долго не получает ресурс.
