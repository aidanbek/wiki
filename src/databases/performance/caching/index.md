# Database Caching

Кэширование на уровне БД и приложения, чтобы не пересчитывать дорогие запросы каждый раз. Снижает нагрузку и latency
ценой риска работы с устаревшими данными.

## Подходы

- Materialized Views — предвычисленные результаты, хранимые в БД; refresh on-demand/по расписанию.
- Query-Result Caching — кэш результатов запросов в app-слое (Redis/Memcached) по ключу запрос+параметры.

## Ключевые вопросы

- Инвалидация: TTL, event-based, write-through — как не отдавать устаревшее.
- Hit-rate: кэш полезен только при повторяющихся запросах с невысокой кардинальностью параметров.

## Подводные камни

- Cache coherency и thundering herd при массовом истечении ключей (см. [materialized-views](materialized-views/index.md), [query-result](query-result/index.md),
  [fundamentals/caching](../../../fundamentals/caching/index.md)).
