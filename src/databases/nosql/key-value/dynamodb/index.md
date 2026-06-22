# DynamoDB

Полностью управляемый AWS key-value/document store. Даёт предсказуемую low-latency производительность на любом масштабе
без администрирования серверов.

## Модель

- Partition key (+ опциональный sort key) определяет размещение и доступ; данные шардируются по hash(partition key).
- GSI/LSI — вторичные индексы для альтернативных паттернов доступа.
- Eventually или strongly consistent чтения (на выбор), single-digit ms latency.

## Возможности

- Автоматическое масштабирование; on-demand или provisioned capacity.
- DynamoDB Streams для CDC/триггеров (Lambda), TTL, транзакции.

## Подводные камни

- Single-table design и проектирование «от паттернов запросов»; hot partitions при неравномерном ключе.
- Дорого при неоптимальных запросах/сканах; нет произвольных JOIN/WHERE (см. key-value).
