Merge Sort (Сортировка слиянием)

Divide-and-conquer: рекурсивно делит массив пополам, сортирует половины, сливает отсортированные части - гарантированный
O(n log n). Stable sort - сохраняет порядок равных элементов при merge. Не in-place - требует O(n) дополнительной памяти
для temporary array при слиянии. Worst/average/best case одинаковы O(n log n) - предсказуемая производительность, нет
degenerate cases. Хорошо параллелится - независимые подзадачи могут выполняться параллельно. Используется в external
sorting (данные не влезают в память), LinkedList сортировке (нет random access overhead). Основа TimSort (Python,
Java) - hybrid с insertion sort.
