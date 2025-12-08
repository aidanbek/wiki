Entities

Объекты с уникальной идентичностью, существующие во времени, изменяемые - определяются identity, не attributes. User с
id=123 остаётся тем же User даже если имя/email изменились. Equality by identity (user1.id == user2.id), не по
содержимому. Lifecycle от создания до удаления, могут менять состояние сохраняя continuity. Хранятся в БД обычно с
primary key. Содержат бизнес-логику изменяющую их состояние, invariants должны поддерживаться. Отличаются от Value
Objects которые equality by value и immutable.

Value Objects

Объекты без идентичности, определяемые атрибутами, immutable - описывают characteristics, не things. Money(100, "USD"),
Address("123 Main St", "NY"), DateRange(start, end) - равны если все поля равны. Не имеют id, часто composite из
примитивов, могут быть shared безопасно (immutability). Заменяются полностью при изменении - нельзя "изменить деньги",
создаётся новый объект. Инкапсулируют validation (Money не может быть negative), domain logic (Money.add(),
Address.isValid()). Делают модель богаче, выразительнее, type-safe - вместо примитивов domain concepts. Small, tested
once, reused everywhere.
