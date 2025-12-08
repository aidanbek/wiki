Strangler Fig Pattern

Постепенная миграция от legacy системы к новой путём incremental replacement - безопасная модернизация без big bang
rewrite. Фасад перед legacy направляет запросы: новая функциональность в новую систему, остальное в legacy. По мере
готовности нового функционала routing обновляется. Legacy постепенно "душится" пока не останется пустым и может быть
выключена. Названа по растению которое обвивает дерево. Снижает риск, позволяет iterative delivery, rollback при
проблемах. Требует продуманной стратегии декомпозиции и routing logic. Pattern для refactoring monolith to microservices
или technology migration.
