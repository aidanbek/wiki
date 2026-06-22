# Infrastructure

Всё, что окружает код в продакшене: где приложение работает, как доставляется, как переживает сбои и как за ним
наблюдают. Раздел про эксплуатацию и платформу — не про бизнес-логику, а про среду, в которой она исполняется.

## Разделы

- [Hosting](hosting/index.md) — где крутится приложение: shared, VPS, dedicated, cloud.
- [Containerization](containerization/index.md) — упаковка и оркестрация: Docker, Kubernetes.
- [Web-Servers](web-servers/index.md) — приём HTTP-трафика и reverse proxy: Nginx, Apache.
- [Networking](networking/index.md) — связность и доставка трафика: DNS, TCP/IP, балансировка, firewalls.
- [Message-Queues](message-queues/index.md) — асинхронный обмен сообщениями между сервисами: Kafka, RabbitMQ, SQS.
- [Async-Processing](async-processing/index.md) — фоновая обработка задач: очереди, воркеры, шедулеры, паттерны надёжности.
- [Data-Processing](data-processing/index.md) — batch, stream и ETL обработка данных.
- [Storage](storage/index.md) — хранение данных: файловые системы, блочное и объектное хранилище, tiering.
- [Deployment](deployment/index.md) — доставка новых версий без простоя: стратегии и откаты.
- [Process-Management](process-management/index.md) — запуск и присмотр за процессами: systemd, supervisor.
- [Observability](observability/index.md) — понимание состояния системы: логи, метрики, трейсы, алерты.
- [Resilience](resilience/index.md) — устойчивость к сбоям: circuit breaker, retry, rate limiting, bulkhead.
- [Backup-Recovery](backup-recovery/index.md) — резервные копии и восстановление после катастроф.
- [Secrets-Management](secrets-management/index.md) — безопасное хранение и ротация секретов.

## Сквозные принципы

- Проектируй под отказ: любой компонент рано или поздно упадёт — важно, что произойдёт дальше (см. resilience).
- Автоматизируй и описывай инфраструктуру как код — ручные действия не воспроизводятся и плохо аудируются.
- Без наблюдаемости нельзя эксплуатировать: если сбой не видно в метриках/логах/трейсах, его и не починить.
