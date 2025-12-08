Weighted Graphs (Взвешенные графы)

Графы где рёбра имеют численный вес/стоимость - моделируют расстояния, пропускную способность, время, стоимость. Weight
функция w(u,v) назначает число каждому ребру, может быть положительным (расстояния), отрицательным (profit
maximization), infinity (отсутствие ребра). Path weight - сумма весов рёбер в пути, критично для shortest path problems.
Алгоритмы отличаются от unweighted: shortest path требует Dijkstra/Bellman-Ford вместо BFS, minimum spanning tree
использует веса для выбора рёбер. Negative weights усложняют - negative cycles делают shortest path undefined, не все
алгоритмы работают (Dijkstra требует non-negative).
