Системный подход к управлению связями между компонентами, решающий проблемы tight coupling, testability,
конфигурируемости. От жёстко закодированных зависимостей (new MySQLRepository()) к гибким механизмам инъекции и
разрешения. Критичен для архитектуры - неправильное управление зависимостями создаёт spaghetti code, невозможность
изменений, проблемы тестирования. Эволюция: от manual wiring к IoC контейнерам.

## Различия между паттернами

### IoC vs DI (принцип vs реализация)

IoC - абстрактный принцип инверсии контроля над потоком выполнения и созданием объектов. DI - конкретная реализация IoC
через инъекцию зависимостей в конструктор/свойства. IoC шире - включает DI, Service Locator, Template Method, Events,
Callbacks. DI - специфичная техника IoC для управления зависимостями. Когда говорят "IoC контейнер", обычно имеют ввиду
DI контейнер - терминологическая путаница.

### DI vs Service Locator (оба решают одну проблему)

DI: зависимости передаются извне, явно видны в сигнатуре, пассивный класс получает всё нужное. Service Locator: класс
активно запрашивает зависимости у глобального реестра, скрытые зависимости. DI предпочтительнее - явность, testability (
передал mock), нет скрытых связей. Service Locator - простота внедрения в legacy, работа в static контекстах. Fowler: "
Service Locator не так плох, но DI чище". Критика SL: скрытые зависимости, runtime ошибки вместо compile-time.

### Service Container vs DI (инфраструктура vs паттерн)

DI - паттерн передачи зависимостей, можно делать вручную: new UserService(new SQLRepository()). Service Container -
инфраструктура автоматизирующая DI, устраняет manual wiring. DI паттерн работает без контейнера (Poor Man's DI),
контейнер делает его практичным для больших систем. Контейнер не обязателен для DI, но критичен для production
приложений с десятками сервисов. DI - что делать, Container - как автоматизировать.

### Service Container vs Service Locator

Оба - централизованное управление созданием объектов и зависимостями. Container используется в composition root для
wiring, затем DI. Locator используется в runtime коде для получения зависимостей. Container видят только bootstrap код,
Locator - весь application код. Container push модель (инъекция), Locator pull модель (запрос). Container поддерживает
DI паттерн, Locator - антипаттерн Service Locator. Технически схожи, семантически противоположны.

### Constructor vs Property Injection

Constructor DI: зависимости обязательны, передаются при создании, immutable после конструирования. Property DI:
опциональные зависимости, mutable, можно установить позже. Constructor гарантирует полную инициализацию, явные
требования. Property для опциональных сервисов (логирование), циклических зависимостей, frameworks требующих
parameterless constructor. Предпочитай constructor - fail-fast, immutability, явность контракта. Property - вынужденная
мера для особых случаев.

### Manual DI vs Container

Manual DI (Poor Man's): new UserService(new Repository(new DbContext(connectionString))) в main/composition root.
Контейнер: container.Resolve<UserService>() автоматически создаёт граф. Manual простой для маленьких проектов, explicit
control. Контейнер критичен при >20 классах, сложных графах, lifecycle management. Manual compile-time safety, контейнер
runtime resolution (можно ошибиться в регистрации). Начинай с manual, переходи на контейнер при росте.

### Anti-pattern: Service Locator Problems

Скрытые зависимости - класс выглядит независимым, но зависит от locator и всех сервисов в нём. Runtime ошибки вместо
compile-time - забыл зарегистрировать сервис, упадёт в production. Тестирование сложнее - нужно mock весь locator. Tight
coupling к locator инфраструктуре. Нарушает явность - невозможно понять зависимости без чтения кода. Исключение: когда
DI технически невозможна (static members, attributes, legacy frameworks).

### Composition Root

Единственное место в приложении где разрешено использовать контейнер напрямую - точка входа (main/startup). Остальной
код получает зависимости через DI, не знает о контейнере. Composition root регистрирует все биндинги, создаёт root
объект (Application, Controller Factory). Нарушение - передача container'а в бизнес-логику превращает его в Service
Locator. "Register in root, resolve in root, inject everywhere else" - золотое правило.

### Lifecycle Management

Transient - новый экземпляр при каждом resolve. Singleton - один на приложение. Scoped - один на scope (HTTP request,
transaction). Container управляет временем жизни автоматически, в manual DI нужно руками. Критично для stateful
сервисов, DbContext, HttpClient. Неправильный lifecycle - memory leaks (singleton держит scoped), shared state (
transient вместо singleton), проблемы concurrency. Контейнер даёт декларативный контроль над этим.

### Когда что применять

Manual DI - маленькие проекты (<10 классов), консольные утилиты, максимальный контроль. DI Container - любое production
приложение, web apps, сложные графы зависимостей. Service Locator - legacy код, static contexts, миграция с Service
Locator на DI (постепенно). Всегда начинай с DI паттерна (constructor injection), добавляй контейнер при необходимости,
избегай Service Locator кроме forced scenarios.
