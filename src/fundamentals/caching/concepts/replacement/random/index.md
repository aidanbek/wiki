# Random

Случайный выбор записи на удаление — без предположений о паттернах доступа.

## Свойства

- Неожиданно неплох для многих нагрузок, особенно при uniform access.
- Минимальный overhead (нет структур для maintenance), нет worst case.

## Где используется

- Baseline / fallback; Redis приближает LRU через random sampling — берёт N случайных и вытесняет least recent из них.
