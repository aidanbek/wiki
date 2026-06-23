# DDoS Mitigation

Защита от distributed denial of service — попытки исчерпать ресурс (полосу, соединения, CPU, БД) потоком запросов с
множества источников, чтобы сервис стал недоступен легитимным пользователям.

## Типы атак

- **Volumetric (L3/L4)** — забить канал: UDP/ICMP flood, amplification (DNS, NTP, memcached).
- **Protocol** — исчерпать состояние: SYN flood, незавершённые соединения (Slowloris).
- **Application (L7)** — дорогие запросы похожие на настоящие: тяжёлые поиски, неоптимальные эндпоинты.

## Слои защиты

- На периметре — scrubbing-провайдер/CDN (Cloudflare, AWS Shield), anycast размазывает трафик по точкам присутствия.
- L3/L4 — фильтрация по сигнатурам, SYN cookies, blackhole/sinkhole у апстрима.
- L7 — WAF, [rate limiting](../../infrastructure/resilience/rate-limiting/index.md), CAPTCHA/challenge, гео/ASN-фильтры.
- Внутри приложения — [load shedding](../../fundamentals/performance/load-shedding/index.md),
  [circuit breaker](../../infrastructure/resilience/circuit-breaker/index.md), автоскейлинг, кэш.

## Подводные камни

- Нельзя «отличить» L7-атаку по одному запросу — решает поведение и агрегаты, отсюда ложные срабатывания.
- Автоскейлинг под атакой спасает доступность, но бьёт по кошельку (economic DoS) — нужны лимиты.
- Amplification использует ваши же открытые сервисы как усилитель — не оставляйте открытыми UDP-сервисы.
