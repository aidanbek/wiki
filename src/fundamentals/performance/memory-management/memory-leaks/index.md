# Memory Leaks

Память, которая больше не используется, но не освобождена → постепенный рост потребления и OOM.

## Частые причины

- Циклические ссылки (в языках без трассирующего GC), не снятые event listeners, кэши без eviction.
- Замыкания, держащие крупные объекты; незакрытые native-ресурсы (file handles, sockets).

## Диагностика и профилактика

- Heap dumps во времени, профайлеры (Valgrind, Chrome DevTools), мониторинг роста RSS.
- RAII, weak references, аккуратные замыкания, тесты с memory assertions; GC-языки тоже уязвимы (см.
  [garbage-collection](../garbage-collection/index.md)).
