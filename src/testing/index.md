# Testing

Автоматическая проверка того, что код делает то, что нужно, и не ломается при изменениях. Разные уровни и техники дают
разный баланс уверенности, скорости и стоимости сопровождения.

## Разделы

- [Test Strategies](test-strategies/index.md) — что тестировать и насколько подробно (пирамида тестов).
- [Unit Testing](unit-testing/index.md) — изолированная проверка отдельных модулей.
- [Integration Testing](integration-testing/index.md) — проверка взаимодействия компонентов.
- [E2E Testing](e2e-testing/index.md) — сквозные сценарии глазами пользователя.
- [Contract Testing](contract-testing/index.md) — согласованность контрактов между сервисами.
- [Load Testing](load-testing/index.md) — поведение под нагрузкой.
- [Mocking](mocking/index.md) — подмена зависимостей test doubles.
- [Property-Based Testing](property-based/index.md) — проверка свойств на сгенерированных входах.
- [Fuzzing](fuzzing/index.md) — подача случайных/некорректных данных для поиска падений.
- [Mutation Testing](mutation-testing/index.md) — проверка качества самих тестов.
- [Snapshot Testing](snapshot-testing/index.md) — сравнение вывода с эталоном.

## Зачем это знать

- Тесты — это сеть безопасности, которая даёт смелость рефакторить и быстро катить изменения.
- Главная метрика пользы — defect escape rate (сколько багов утекло в прод), а не процент покрытия.
- Разные техники ловят разные баги: unit — логику, fuzzing — крайние случаи, mutation — дыры в самих тестах.
