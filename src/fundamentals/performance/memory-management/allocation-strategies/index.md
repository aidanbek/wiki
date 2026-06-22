# Allocation Strategies

Способы выделения памяти и их компромиссы: скорость vs фрагментация vs гибкость.

## Stack vs Heap

- Stack — автоматический, быстрый (pointer bump), ограниченный, LIFO-время жизни.
- Heap — динамический, гибкий, медленнее (поиск по free list), требует освобождения.

## Стратегии

- first-fit / best-fit / worst-fit — разный баланс скорости и фрагментации.
- Arena/region — bulk allocate + bulk free (удобно для request-scoped); object pools — переиспользование (меньше GC
  pressure); bump allocator — последовательный инкремент (очень быстро, нужен periodic reset).
