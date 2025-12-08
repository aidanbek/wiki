Command

Инкапсуляция запроса как объекта - параметризация клиентов операциями, очередь, логирование, undo. Command интерфейс с
execute(), ConcreteCommand хранит receiver и параметры. Invoker вызывает команду не зная деталей. Decouples sender от
receiver, поддерживает undo (store state), макрокоманды (композиция команд), transaction-подобное поведение. Основа
CQRS, async operations, UI actions.
