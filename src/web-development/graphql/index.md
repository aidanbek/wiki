# GraphQL

Язык запросов и runtime для API. Один endpoint, и клиент сам указывает, какие именно поля ему нужны — поэтому нет ни
over-fetching (лишних данных), ни under-fetching (множества запросов). Альтернатива REST, а не замена.

## Как устроено

- Schema-first: типы, queries, mutations, subscriptions описываются в SDL (Schema Definition Language).
- Resolvers достают данные под каждое поле.

## Плюсы

- Клиент берёт ровно нужное (mobile-friendly).
- Строгая типизация и introspection (авто-генерация документации и тулинга).

## Сложности

- Кеширование сложнее (ответ зависит от запроса).
- N+1 problem — требуется батчинг через DataLoader.
- Query complexity attacks — нужны depth/cost limiting.
- Use cases: мобильные приложения, сложные домены, [BFF](../api-patterns/bff/index.md).
