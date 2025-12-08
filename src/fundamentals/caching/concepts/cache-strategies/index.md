Cache Strategies (Общее)

Паттерны взаимодействия кэша с persistent storage при чтении и записи - определяют когда данные попадают в кэш, когда
обновляются, как синхронизируются с источником. Read strategies: как обрабатывать cache miss. Write strategies: когда и
как писать изменения в storage. Trade-offs между consistency (синхронность с DB), latency (задержка операций),
complexity (логика в приложении vs кэш-системе). Выбор зависит от requirements по consistency, performance, fault
tolerance.
