# Elasticsearch

Распределённый поисково-аналитический движок поверх Apache Lucene. Schema-flexible, с RESTful JSON API и near-realtime
индексацией.

## Возможности

- Распределённость: шарды + реплики, горизонтальное масштабирование, отказоустойчивость.
- Полнотекстовый поиск (BM25), агрегации, фасеты, geo, автодополнение.
- Mapping/анализаторы текста; ELK/Elastic Stack (Elasticsearch + Logstash/Beats + Kibana) для логов.

## Use cases

- Observability (логи, метрики), поиск в e-commerce, аналитика, full-text по большим объёмам.

## Подводные камни

- Eventual consistency, не для строгих транзакций — дополнение к primary БД.
- Управление маппингом и переиндексацией; ресурсоёмкость по памяти/heap; split-brain без правильного кворума мастеров.
