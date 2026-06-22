Dependency Injection (DI)

Передача зависимостей объекту извне вместо создания их внутри.

## Формы

- Constructor injection (предпочтительно — зависимости обязательны и видны в сигнатуре).
- Property/setter injection (опциональные зависимости); method injection (редко, разовая зависимость).
- `UserService(IUserRepository repo)` вместо `repo = new UserRepository()` внутри.

## Зачем

- Тестируемость (подмена mock-ов), гибкость (замена реализации), соблюдение Dependency Inversion (DIP).
- Класс зависит от абстракций, а не от конкретных классов.

## Связь с IoC

- DI — конкретная техника реализации Inversion of Control; обычно автоматизируется DI-контейнером (см.
  inversion-of-control, service-container).
