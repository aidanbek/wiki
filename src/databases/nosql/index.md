# NoSQL

Семейство нереляционных хранилищ, проектируемых «от паттернов доступа». Жертвуют частью возможностей SQL (JOIN, строгая
схема, иногда строгая консистентность) ради масштабируемости, гибкости схемы или специфической модели данных.

## Типы

- Key-Value — доступ по ключу, максимум скорости (Redis, Memcached, DynamoDB).
- Document — JSON/BSON-документы, гибкая схема (MongoDB, CouchDB).
- Column-Family — wide-column, огромный write-объём (Cassandra, ClickHouse).
- Graph — узлы и связи, обход отношений (Neo4j).
- Search — полнотекстовый поиск на inverted index (Elasticsearch, Solr, Sphinx).

## Как выбирать

- По модели данных и паттернам запросов, а не «потому что NoSQL».
- Часто как дополнение к основной реляционной БД (кэш, поиск, аналитика), а не замена (см. [cap-theorem](../theory/cap-theorem/index.md),
  [eventual-consistency](../consistency-patterns/eventual-consistency/index.md)).
