Inversion of Control (IoC)

Принцип, при котором поток выполнения и создание объектов контролирует фреймворк/контейнер, а не прикладной код.
«Don't call us, we'll call you» (Hollywood Principle).

## Суть

- Вместо `main()`, создающего и связывающего все объекты, это делает контейнер по конфигурации.
- Не твой код вызывает библиотеку, а библиотека вызывает твой код через callbacks/hooks/переопределения.

## Реализации

- Dependency Injection, Service Locator, Template Method, Factory, event/callback-модели — всё это формы IoC.

## Зачем

- Слабая связанность, расширяемость, тестируемость; ядро фреймворков (Spring, ASP.NET, фронтенд-фреймворки) (см. dependency-injection).
