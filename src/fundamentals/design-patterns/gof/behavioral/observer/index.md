# Observer

Подписка на изменения объекта — отношение one-to-many, где изменение Subject уведомляет всех зависимых Observers.

## Структура

- Subject хранит список Observers и вызывает `notify()` при изменении; Observer реализует `update()`.
- Модели доставки: push (передаём данные) vs pull (наблюдатель сам запрашивает).

## Когда использовать

- Event-driven архитектуры, MVC (Model уведомляет View), reactive programming, подписки на события.

## Trade-offs

- Слабая связанность: Subject не знает конкретных типов наблюдателей.
- Риск утечек памяти (не отписались), неожиданные каскады уведомлений, сложный порядок (см. [mediator](../mediator/index.md), [event-driven](../../../../app-architecture/event-driven/index.md)).
