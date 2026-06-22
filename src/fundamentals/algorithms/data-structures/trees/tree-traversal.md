# Tree Traversal (Обход дерева)

Систематическое посещение всех узлов дерева; все обходы — O(n).

## В глубину (DFS)

- **In-order** (left → node → right) — для BST даёт отсортированный порядок.
- **Pre-order** (node → left → right) — копирование/сериализация дерева.
- **Post-order** (left → right → node) — удаление, вычисление выражений.

## В ширину (BFS)

- **Level-order** — по уровням через очередь (см. ../../graphs/traversal.md).
