PostgreSQL Snippets

Полезные практические запросы и команды для PostgreSQL — диагностика, обслуживание, повседневные задачи.

## Диагностика

- Активные запросы: `SELECT * FROM pg_stat_activity WHERE state != 'idle';`
- Самые тяжёлые запросы: `SELECT query, calls, total_exec_time, mean_exec_time FROM pg_stat_statements ORDER BY total_exec_time DESC LIMIT 20;`
- Блокировки: `SELECT * FROM pg_locks l JOIN pg_stat_activity a ON l.pid = a.pid WHERE NOT l.granted;`

## Размеры и обслуживание

- Размер таблиц: `SELECT relname, pg_size_pretty(pg_total_relation_size(relid)) FROM pg_catalog.pg_statio_user_tables ORDER BY pg_total_relation_size(relid) DESC;`
- Неиспользуемые индексы: `SELECT relname, indexrelname, idx_scan FROM pg_stat_user_indexes WHERE idx_scan = 0;`
- Создание индекса без блокировки: `CREATE INDEX CONCURRENTLY ...`

## Прочее

- Анализ запроса: `EXPLAIN (ANALYZE, BUFFERS) <query>;` (см. execution-plan, query-analysis).
