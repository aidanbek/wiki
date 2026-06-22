gRPC Best Practices

Практики надёжного и производительного использования gRPC в продакшене.

## Сообщения и вызовы

- Держать сообщения небольшими; для объёмных данных использовать streaming.
- Deadlines на каждый вызов — иначе зависший запрос держит ресурсы.

## Надёжность

- Retry policy: exponential backoff, лимит попыток, только для идемпотентных операций.
- Error handling: структурированные ошибки (status codes), детали через Protobuf `Any`.
- Versioning: только аддитивные изменения, аккуратный deprecation.

## Эксплуатация

- Load balancing: client-side (фича gRPC) или прокси (Envoy).
- Connection pooling и keepalive-настройки.
- Monitoring через OpenTelemetry; security — mTLS для service-to-service.
