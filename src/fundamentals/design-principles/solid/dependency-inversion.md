Dependency Inversion Principle (DIP)

Модули высокого уровня не зависят от модулей низкого уровня — оба зависят от абстракций. Абстракции не зависят от
деталей; детали зависят от абстракций.

## Суть

- `OrderService` зависит не от `MySQLRepository`, а от `IOrderRepository`; реализацию подставляют снаружи.
- Инверсия: высокоуровневый модуль определяет интерфейс, низкоуровневый его реализует (обычно бывает наоборот).

## Зачем

- Реализуется через dependency injection; ключ к testability и замене имплементаций (см. design-patterns/dependency-management/dependency-injection, grasp/indirection).
