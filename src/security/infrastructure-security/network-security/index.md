# Network Security

Защита инфраструктуры через сетевые контролы. Принцип defense in depth: несколько слоёв, чтобы пробой периметра не дал
атакующему свободно ходить внутри.

## Слои защиты

- Perimeter firewall, internal segmentation, host firewalls.
- VLAN изолируют трафик, VPN защищают удалённый доступ.
- IDS/IPS обнаруживают и блокируют атаки.

## Современные подходы

- Zero trust networking заменяет периметровую модель (см. [zero-trust](../../zero-trust/index.md)).
- Microsegmentation ограничивает lateral movement внутри сети.
- Network policies в Kubernetes ограничивают межподовое общение.

## Защита и проверка

- DDoS mitigation — rate limiting, scrubbing centers.
- Регулярные vulnerability scanning и penetration testing.
