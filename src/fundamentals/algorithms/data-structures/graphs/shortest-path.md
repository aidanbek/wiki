Shortest Path (Кратчайшие пути)

Путь между вершинами с минимальным суммарным весом — навигация, routing, оптимизация.

## Алгоритмы

- **Dijkstra** — greedy, non-negative weights, O((V+E)log V) с priority queue.
- **Bellman-Ford** — допускает negative weights, O(VE), детектирует negative cycles.
- **Floyd-Warshall** — all-pairs, O(V³), DP, прост для плотных графов.
- **A\*** — эвристическая оптимизация Dijkstra к конкретной цели.
- **BFS** — для unweighted (все рёбра вес 1).

## Выбор

- По характеру графа (sparse/dense, negative weights, single/all pairs) и требованиям (optimal vs approximate, память).
