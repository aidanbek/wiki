Template Method

Определяет скелет алгоритма в методе, делегируя шаги подклассам - инвариантные части в base class, вариативные overridden. AbstractClass.templateMethod() вызывает primitiveOperation1(), primitiveOperation2() - ConcreteClass переопределяет. Hollywood Principle - "не звони нам, мы позвоним". Framework extension points, lifecycle hooks. Управление через наследование, жёсткая привязка.
