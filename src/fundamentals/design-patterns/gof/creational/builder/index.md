Отделяет конструирование сложного объекта от его представления, позволяя создавать разные представления через один
процесс. CarBuilder.setEngine().setWheels().build() - пошаговое конструирование. Director управляет процессом, Builder
определяет шаги, ConcreteBuilder реализует. Решает проблему telescoping constructor (много параметров). Fluent
interface, immutability результата, валидация при build().
