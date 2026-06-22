# Cassandra

Распределённая column-family БД без single point of failure (masterless). Спроектирована под высокую доступность и
огромный объём записей при линейном масштабировании.

## Архитектура

- Ring + consistent hashing; все узлы равноправны, нет мастера.
- Репликация по replication factor; tunable consistency (ONE/QUORUM/ALL для чтения и записи).
- LSM-tree storage: быстрые записи (commit log + memtable + sstable), периодический compaction.

## Сильные стороны

- Очень высокий write throughput, линейная масштабируемость, multi-DC репликация.
- CQL — SQL-подобный язык; модель данных проектируется под конкретные запросы.

## Ограничения / подводные камни

- Нет JOIN-ов и произвольных WHERE; денормализация и дублирование под каждый паттерн запроса.
- Tombstones при удалениях бьют по производительности; QUORUM+QUORUM нужен для strong-чтений. Use cases: time-series,
  IoT, messaging.
