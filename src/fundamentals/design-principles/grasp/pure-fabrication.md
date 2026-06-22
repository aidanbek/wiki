# Pure Fabrication

Искусственный класс, не представляющий доменную концепцию, созданный ради Low Coupling и High Cohesion.

## Суть

- `DatabaseMapper`, `Logger`, `EmailService` — сервисные объекты, которых нет в предметной области.
- Когда следование Information Expert нарушило бы другие принципы — создай fabrication.

## Зачем

- Компромисс между чистотой доменной модели и практичностью (см. grasp/information-expert, grasp/low-coupling).
