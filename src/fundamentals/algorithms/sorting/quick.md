Quick Sort (Быстрая сортировка)

Divide-and-conquer через pivot: выбор опорного элемента, partitioning (меньшие влево, большие вправо), рекурсивная
сортировка частей. Average case O(n log n), worst case O(n²) при плохом выборе pivot (already sorted + naive pivot =
first element). In-place - O(log n) память для recursion stack, unstable в классической версии. Практически самая
быстрая для random данных благодаря хорошей cache locality и малым константам. Выбор pivot критичен: random,
median-of-three, Hoare's scheme - избегают worst case. 3-way partitioning для данных с дубликатами (Dijkstra's Dutch
National Flag). Интроспективная сортировка (introsort) переключается на heapsort при глубокой рекурсии для гарантии O(n
log n).
