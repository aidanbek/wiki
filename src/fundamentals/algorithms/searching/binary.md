Binary Search (Бинарный поиск)

Поиск в отсортированном массиве делением диапазона пополам: сравнить со средним элементом, отбросить половину.

## Сложность

- O(log n) — для миллиона элементов ~20 сравнений. Нужны отсортированные данные и random access (array, не linked list).

## Алгоритм

- `low=0`, `high=n-1`; `mid`; если `target < arr[mid]` → `high=mid-1`, иначе `low=mid+1`; повтор, пока не найдём или `low>high`.
- `mid = low + (high - low) / 2` — чтобы избежать integer overflow.

## Вариации и применение

- `lower_bound`/`upper_bound` для диапазонов, exponential search для unbounded, interpolation search для uniform distribution.
- Основа B-trees, binary search trees, индексов БД (см. fundamentals/algorithms/data-structures/trees).
