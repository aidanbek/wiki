Разделение большой таблицы на smaller pieces (partitions). Horizontal: по диапазону значений (range), по хэшу (hash), по
списку (list). Query pruning - execution только на relevant partitions. Упрощает архивирование, maintenance. Declarative
в Postgres 10+.
