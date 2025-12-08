Aggregates

Кластер связанных entities и value objects с чёткой границей и корневой entity - consistency boundary. Aggregate Root -
единственная entry point, внешний мир взаимодействует только с ней, не с внутренними entities. Order (root) содержит
OrderLines - можно изменить Order, нельзя напрямую OrderLine. Транзакция охватывает один aggregate - изменения атомарны
внутри, eventual consistency между aggregates. Защищает invariants - только root может modify internal state, гарантируя
правила. Repository работает с Aggregate Roots, не с internal entities. Правильное определение границ критично - слишком
большие (contention), слишком маленькие (сложность координации).
