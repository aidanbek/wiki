# gRPC

Высокопроизводительный RPC-фреймворк от Google. Использует [Protobuf](../data-serialization/protobuf/index.md) для
сериализации и HTTP/2 для транспорта. Сервис описывается в `.proto`, по нему генерируется код.

## Возможности

- Streaming: client, server, bidirectional (см. [streaming](streaming/index.md)).
- Deadlines/timeouts, аутентификация (TLS, token-based), metadata (заголовки).

## Плюсы

- Type safety и кодогенерация под разные языки.
- Производительность: бинарь + мультиплексирование HTTP/2.
- Use cases: межсервисное общение, мобильные бэкенды, polyglot-среды.

## Минусы

- Не дружелюбен к браузеру — нужен gRPC-Web и прокси.
- Сложнее отлаживать (бинарный формат), проблемы с прохождением через firewall.
