Column-Family (Wide-Column)

Wide-column хранилища: строки имеют динамический набор колонок, сгруппированных в column families. Модель «строка → 
(колонка → значение)» c гибкой, разреженной структурой. Прообраз — Google Bigtable.

## Свойства

- Schema-flexible: разные строки могут иметь разные колонки; sparse-данные хранятся эффективно (нет NULL-оверхеда).
- Запись/хранение по column families; типично LSM-tree, sstables, compaction.
- Compression и bloom filters; горизонтальное масштабирование, обычно eventual consistency.

## Когда использовать

- Очень большой объём записей: time-series, IoT, логи, ленты сообщений.
- Известные заранее паттерны запросов (доступ по ключу/диапазону partition key).

## Ограничения

- Слабая поддержка ad-hoc запросов, JOIN-ов, агрегаций (кроме OLAP-вариантов вроде ClickHouse).
- Модель данных проектируется «от запросов» (query-first). Примеры: Cassandra, HBase, ClickHouse.
