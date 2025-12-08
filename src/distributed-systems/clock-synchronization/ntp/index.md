Network Time Protocol синхронизирует часы через сеть с точностью ~1-50ms в LAN. Использует иерархию серверов (strata),
алгоритм Marzullo для выбора лучших источников. Недостаточно для строгой distributed consistency, но достаточно для
logging, monitoring.
