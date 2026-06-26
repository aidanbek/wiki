# Bounded Contexts

Явная граница, внутри которой доменная модель имеет конкретный смысл и согласованность — лингвистическая граница.

## Идея

- Один термин может значить разное в разных контекстах: «Customer» в Sales ≠ «Customer» в Support.
- Каждый контекст — своя модель, потенциально своя БД и своя команда.
- Взаимодействие через well-defined contracts и трансляцию на границе (anti-corruption layer).

## Зачем

- Предотвращает model pollution (смешение concerns), даёт автономию командам.
- Естественное разделение системы — часто совпадает с границами микросервисов.

## Context mapping

- Описывает отношения контекстов: shared kernel, customer-supplier, conformist, ACL.
- Ключевой strategic pattern DDD для масштабирования (см. [fundamentals/app-architecture/ddd](../index.md), [microservices](../../microservices/index.md)).
