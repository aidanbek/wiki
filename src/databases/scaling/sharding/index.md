Horizontal partitioning на independent databases. Shard key определяет routing (user_id → shard). Проблемы: cross-shard
queries, transactions сложны. Resharding при росте - major operation. Managed в некоторых БД (MongoDB, Vitess for
MySQL), manual в других.
