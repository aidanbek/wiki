# Solr

Зрелая поисковая платформа на Apache Lucene. Близка по возможностям к Elasticsearch, исторически популярна в enterprise.

## Возможности

- XML/JSON API, богатый синтаксис запросов, faceting, highlighting, geospatial.
- Распределённость через SolrCloud (координация в ZooKeeper): шарды, реплики, отказоустойчивость.
- Конфигурация схемы через managed schema / schema.xml.

## Когда использовать

- Enterprise-поиск, проекты с уже имеющейся экспертизой по Solr/Lucene.
- Нужны зрелые фичи поиска без привязки к Elastic-стеку.

## vs Elasticsearch

- Похожее ядро (Lucene); Solr сильнее в «классическом» текстовом поиске, ES — в логах/аналитике и developer-experience.
- SolrCloud требует отдельного ZooKeeper-кластера (см. elasticsearch).
