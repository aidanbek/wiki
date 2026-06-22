Time-Series Databases

Специализированные БД для данных с временными метками: метрики, IoT-сенсоры, биржевые тики, события. Оптимизированы под
огромный поток append-only записей и запросы по временным диапазонам.

## Оптимизации

- Append-only writes, партиционирование по времени, эффективные time-range запросы.
- Downsampling/rollup и continuous aggregates для исторических данных.
- Сильное сжатие (delta-of-delta, Gorilla, dictionary) — временные ряды хорошо сжимаются.

## Возможности

- Retention policies — автоматическое удаление/архивирование старых данных.
- Функции по времени: rate, окна, интерполяция, gap-filling.

## Когда использовать

- Monitoring/observability, IoT, телеметрия, финансы.
- Менее удобны для произвольных JOIN/реляционных связей (примеры: InfluxDB, TimescaleDB, Prometheus).
