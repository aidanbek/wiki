Observer

Подписка на изменения объекта - one-to-many зависимость, когда изменение одного уведомляет всех зависимых. Subject
хранит список Observers, notifyAll() при изменении. Observer реализует update(). Loose coupling - Subject не знает
конкретных типов наблюдателей. Event-driven архитектуры, MVC (Model уведомляет View), reactive programming основан на
этом. Push vs pull модели.
