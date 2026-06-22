Service Mesh

Инфраструктурный слой для управления service-to-service коммуникацией в микросервисах через sidecar-прокси.

## Как работает

- Рядом с каждым сервисом — sidecar proxy (Envoy), перехватывающий весь сетевой трафик.
- Data plane (прокси) реализует cross-cutting concerns: load balancing, retries, circuit breaking, metrics, tracing, mTLS.
- Control plane (Istio, Linkerd, Consul) управляет конфигурацией всех прокси.

## Плюсы

- Приложение не знает о mesh — прозрачно получает resilience, observability и security без правок кода.

## Trade-offs

- Своя сложность: learning curve, накладные расходы на ресурсы и latency.
- Оправдан при большом числе сервисов (>10-20) и серьёзных требованиях к надёжности/безопасности (см. microservices, infrastructure/resilience).
