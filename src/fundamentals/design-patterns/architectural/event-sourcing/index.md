Вместо хранения текущего состояния сохраняются все события (immutable facts) изменения состояния. Состояние
восстанавливается проигрыванием (replay) событий от начала или snapshot'а. OrderCreated, ItemAdded, PaymentProcessed -
вместо одной записи Order. Полная история (audit trail), time travel, возможность альтернативных проекций, natural fit
для event-driven систем. Сложность: eventual consistency, версионирование событий, производительность replay.
