Интерфейс для создания семейств связанных объектов без указания конкретных классов - factory создающая другие factories.
GUIFactory с методами createButton(), createCheckbox() - WindowsFactory создаёт Windows UI, MacFactory - Mac UI.
Гарантирует совместимость объектов из одного семейства. Изолирует конкретные классы, легко сменить всё семейство.
Вариация Factory Method на уровень выше.
