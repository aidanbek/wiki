Multi-column индексы для queries с несколькими WHERE условиями. Порядок колонок важен: leftmost prefix rule (индекс на (
A,B,C) работает для A, A+B, A+B+C, но не для B или C). Избегают index scans на каждой колонке отдельно.
