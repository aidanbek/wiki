Паттерны инкапсулирующие знание о конкретных классах и скрывающие логику создания объектов. Решают проблемы: какие объекты создавать, как их создавать, как инициализировать. Абстрагируют процесс инстанцирования, делая систему независимой от способа создания и композиции. Flexibility - изменение типов создаваемых объектов без изменения кода использования.

## Различия между схожими паттернами

### Factory Method vs Abstract Factory

Factory Method создаёт один продукт, метод в классе. Abstract Factory создаёт семейство связанных продуктов, отдельный объект. Factory Method подклассы выбирают класс, Abstract Factory подменяет всю фабрику. Factory Method про parallel hierarchies (Creator-Product), Abstract Factory про families of products. Factory Method часть класса, Abstract Factory standalone объект.

### Builder vs Abstract Factory

Builder пошаговое конструирование, фокус на процессе создания сложного объекта. Abstract Factory одномоментное создание family of related objects. Builder разные представления одного объекта (Car, Manual от одного Builder), Abstract Factory разные семейства (WinFactory, MacFactory). Builder для объектов со сложной инициализацией, Abstract Factory для consistent family creation.

### Singleton как антипаттерн

Глобальное состояние нарушает testability (нельзя mock, shared state между тестами). Скрытая зависимость - класс использует Singleton.getInstance(), зависимость не явна. Проблемы multithreading без синхронизации. Затрудняет расширение и наследование. Альтернатива: DI container с singleton lifetime (контролируемый, testable, explicit dependency). Используй Singleton только для stateless инфраструктуры.
