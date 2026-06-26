# CAP Theorem

В распределённой системе одновременно гарантировать можно лишь два из трёх свойств: Consistency, Availability,
Partition tolerance.

## Свойства

- Consistency: все узлы видят одни и те же актуальные данные (здесь — linearizability).
- Availability: каждый запрос получает ответ (не обязательно самый свежий).
- Partition tolerance: система продолжает работать при разрыве сети между узлами.

## Суть выбора

- Network partitions неизбежны → P обязателен на практике, выбор сводится к C vs A во время раздела.
- CP: при partition жертвуем доступностью ради согласованности (банкинг).
- AP: при partition отвечаем, но возможны устаревшие данные (Dynamo-style, DNS).

## Нюансы

- На практике это spectrum, не бинарный выбор; вне partition можно иметь и C, и A.
- Дополнение — PACELC (latency vs consistency и в нормальном режиме) (см. [consistency-model](../consistency-model/index.md), [consistency-patterns](../../consistency-patterns/index.md)).

## Примеры систем

- CP: ZooKeeper, etcd, HBase, Spanner, RDBMS с синхронной репликацией — при partition меньшая часть кластера отказывает в записи.
- AP: Cassandra, DynamoDB, Riak, CouchDB, DNS — отвечают всегда, разошедшиеся реплики сходятся позже.
- Многие БД настраиваемы per-request: Cassandra/Dynamo через кворум (`R + W > N`) двигают точку между C и A.

## Частые заблуждения

- «Выбираем 2 из 3 постоянно» — нет: вне partition доступны и C, и A; выбор C↔A возникает **только во время раздела**.
- «Можно пожертвовать P» — в распределённой системе нельзя; отказ от P означает одну ноду, т.е. не распределённую систему.
- CAP-C (linearizability) ≠ ACID-C (инварианты схемы) — одна буква, разный смысл (см. [acid](../acid/index.md)).
- AP ≠ «вообще без согласованности» — бывает eventual/causal; теряется именно линеаризуемость в момент раздела.
