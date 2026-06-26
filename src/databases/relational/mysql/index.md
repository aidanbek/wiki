# MySQL

Популярная open-source реляционная СУБД. Историческая основа LAMP-стека, проста в развёртывании.

## Особенности

- Движок InnoDB по умолчанию: ACID, row-level locking, foreign keys, MVCC, clustered index по primary key.
- Простая и понятная репликация (binlog): async/semi-sync, основа read-replicas и CDC.
- Принадлежит Oracle; популярный community-форк — MariaDB; Percona Server как enterprise-вариант.

## Сильные стороны

- Зрелость, огромная экосистема, простой старт, отличная производительность на типовых web-нагрузках.

## Ограничения / vs Postgres

- Исторически беднее по фичам: слабее работа с JSON, оконными функциями, типами, расширяемостью (разрыв сократился в
  8.x).
- Нюансы дефолтов (часовые пояса, collation, strict mode); кластеризованный PK влияет на дизайн (см. [postgres](../postgres/index.md)).
