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
- Дополнение — PACELC (latency vs consistency и в нормальном режиме) (см. consistency-model, consistency-patterns).
