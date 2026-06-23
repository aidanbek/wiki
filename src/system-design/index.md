# System Design

Проектирование систем под требования по нагрузке, надёжности и стоимости: как из строительных блоков (балансировщики,
кэши, очереди, БД, реплики) собрать систему, которая выдержит нужный масштаб. Большинство кирпичиков разобраны в других
разделах — здесь про методологию их сборки.

## Разделы

- [Methodology](methodology/index.md) — как вести разбор: от требований к архитектуре.
- [Capacity Estimation](estimation/index.md) — прикидки нагрузки, хранения и пропускной способности.
- [Case Studies](case-studies/index.md) — типовые задачи (URL shortener, rate limiter, news feed).

## Опорные блоки

- Масштабирование: [horizontal scaling](../databases/scaling/horizontal/index.md),
  [load balancers](../infrastructure/networking/load-balancers/index.md), [sharding](../databases/scaling/sharding/index.md).
- Скорость и устойчивость: [caching](../fundamentals/caching/index.md),
  [message queues](../infrastructure/message-queues/index.md),
  [resilience](../infrastructure/resilience/index.md).
- Данные: [SQL vs NoSQL](../databases/nosql/index.md), [репликация](../databases/scaling/replication/index.md),
  [consistency](../databases/consistency-patterns/index.md).

## Главные trade-off'ы

- Consistency vs availability ([CAP](../databases/theory/cap-theorem/index.md)), latency vs throughput, стоимость vs
  надёжность — у системного дизайна нет «правильного» ответа, есть обоснованный выбор под требования.
- Сначала проясни требования и масштаб, потом выбирай технологии — не наоборот.
