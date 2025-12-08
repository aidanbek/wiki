Long-running transactions разбитые на локальные transactions с compensating actions. Каждый шаг publish event,
triggering следующий. При failure выполняются compensations в обратном порядке (rollback). Два стиля: choreography (
events) и orchestration (coordinator). Критично для microservices без distributed transactions.
