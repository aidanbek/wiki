Hexagonal Architecture (Ports and Adapters)

Организация кода в layers где бизнес-логика изолирована от external concerns через ports (интерфейсы) и adapters (
реализации). Core domain в центре, не зависит от UI, DB, frameworks. Ports определяют что нужно core (IRepository,
IEmailService), adapters реализуют для конкретных технологий (PostgresRepository, SendGridEmailService). Dependency
Inversion - core определяет интерфейсы, infrastructure реализует. Testability (mock adapters), flexibility (замена DB/UI
без изменения core), clean separation of concerns. Alistair Cockburn's pattern, похож на Clean Architecture и Onion
Architecture. Requires больше кода (интерфейсы, адаптеры), но долгосрочная maintainability.
