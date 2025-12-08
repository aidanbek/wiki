HTTP Caching

Механизм встроенный в HTTP протокол для управления кэшированием через заголовки - Cache-Control (max-age,
public/private, no-cache), ETag (validation), Last-Modified. Позволяет браузерам и прокси кэшировать ответы без знания
семантики приложения. Conditional requests (If-None-Match с ETag) для revalidation - возврат 304 Not Modified если
контент не изменился. Директивы определяют cacheable/uncacheable, shared/private, revalidation стратегии. Правильная
настройка критична - агрессивное кэширование ускоряет, но может показывать stale данные.
