Service Container (IoC Container)

Фреймворк, автоматизирующий DI: регистрация зависимостей, разрешение графа и управление их жизненным циклом.

## Как работает

- Регистрация: `container.Register<IRepository, SQLRepository>()`.
- Разрешение: `container.Resolve<UserService>()` — контейнер рекурсивно создаёт все зависимости.
- Lifetime: singleton / transient / scoped (например, на HTTP-запрос).

## Зачем

- Превращает ручной wiring в декларативную конфигурацию; центральное место управления зависимостями.

## Примеры и нюансы

- Autofac, Unity, Ninject (.NET), Spring (Java), Laravel Container (PHP), InversifyJS (TS).
- Злоупотребление = Service Locator с теми же минусами; предпочтительна явная регистрация (см. dependency-injection, service-locator).
