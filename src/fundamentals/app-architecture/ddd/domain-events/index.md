Domain Events

Immutable события представляющие что-то значимое произошедшее в domain - past tense facts ("OrderPlaced", "
PaymentCompleted"). First-class domain concepts, названия из ubiquitous language, содержат relevant данные. Генерируются
aggregates при изменении состояния, публикуются после commit транзакции. Другие aggregates/bounded contexts
подписываются и реагируют - decoupling через events. Используются для eventual consistency между aggregates (
OrderPlaced → reduce inventory), integration между contexts, audit trail, event sourcing. Делают систему reactive,
explicit в бизнес-процессах, temporal decoupling. Хранение событий в event store даёт полную историю.
