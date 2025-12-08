Microservices

Архитектура из множества небольших независимых сервисов, каждый владеет своим domain и данными - distributed system.
Сервисы общаются через network (REST, gRPC, messaging), независимо deploy'ятся, масштабируются, развиваются.
Organizational benefits - team autonomy, decoupled releases, технологическое diversity. Technical benefits - targeted
scaling, fault isolation, independent evolution. Massive complexity overhead - distributed transactions, network
latency/failures, operational burden (monitoring, tracing, deployment), debugging сложность. Оправдан для больших
организаций с множеством команд, но overkill для стартапов.
