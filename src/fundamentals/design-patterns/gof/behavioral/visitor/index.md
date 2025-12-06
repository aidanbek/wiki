Visitor

Добавление операций к структуре объектов без изменения классов - экстернализация операции в visitor. Element.accept(Visitor), Visitor.visit(ConcreteElement) - double dispatch. Новая операция = новый Visitor, не изменение всех Element классов. Компиляторы (AST traversal), сериализация, отчёты по сложным структурам. Нарушает инкапсуляцию (visitor нужен доступ к internals), сложно добавлять новые Element типы.
