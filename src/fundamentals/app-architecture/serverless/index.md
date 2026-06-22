Serverless (FaaS)

Бизнес-логика выполняется в stateless-функциях, управляемых облачным провайдером (Function as a Service). Серверами не
управляешь.

## Свойства

- Event-driven триггеры (HTTP, очередь, расписание, события БД); функции короткоживущие и stateless (состояние во
  внешних сервисах).
- Автомасштабирование, scaling to zero, оплата за выполнение (pay-per-execution).

## Когда использовать

- Event processing, API backends, scheduled jobs, нерегулярная/спорадическая нагрузка.

## Ограничения

- Cold starts, лимиты времени выполнения и ресурсов, vendor lock-in, сложность локальной разработки и отладки.
- Не для long-running/stateful нагрузок (см. event-driven).
