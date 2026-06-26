# App Architecture

Высокоуровневая организация системы: структура компонентов, их взаимодействие, границы и принципы композиции. Задаёт
модульность, масштабируемость, способ деплоя и то, как делятся работой команды.

## Что определяет архитектура

- Coupling между частями, границы изменений, deployment-модель, технологический стек, организацию команд.
- Эволюция: monolith → modular monolith → microservices; sync → event-driven; centralized → decentralized.

## Стили в разделе

- Monolith, Modular Monolith, Microservices, Serverless.
- Event-Driven, Hexagonal (ports & adapters), Service Mesh, Strangler Fig, DDD.

## Как выбирать

- Trade-off между complexity, flexibility, operational overhead и автономией команд.
- Silver bullet не существует — стиль подбирается под контекст (размер команды, домен, нагрузка) (см. [microservices](microservices/index.md),
  [monolith](monolith/index.md)).
