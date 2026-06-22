LRU Cache

Кэш с вытеснением давно неиспользуемых элементов: хеш-таблица + двусвязный список.

## Свойства

- O(1) на get и put; при переполнении удаляется least recently used.
- Применение: браузеры, БД, процессоры (см. fundamentals/caching/concepts/replacement/lru).
