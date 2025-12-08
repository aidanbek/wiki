Browser Cache

Встроенный кэш браузера хранящий ресурсы локально на устройстве пользователя - самый быстрый уровень (disk/memory).
Управляется HTTP cache headers от сервера, соблюдает Cache-Control директивы. Memory cache (в RAM, быстрый, живёт пока
вкладка открыта) и disk cache (persistent между сессиями). Service Workers позволяют программируемый контроль над кэшем
для PWA. DevTools показывают cache status (from memory cache, from disk cache). Пользователь может очистить вручную,
hard refresh (Ctrl+F5) bypass cache.
