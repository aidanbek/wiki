Memento

Сохранение и восстановление состояния объекта без нарушения инкапсуляции - snapshot для undo/redo. Originator создаёт Memento (снимок состояния), Caretaker хранит, восстанавливает через Originator. Memento непрозрачен для Caretaker - только Originator знает содержимое. Undo stacks, checkpoints, transactions. Memento immutable, может быть дорогим по памяти.
