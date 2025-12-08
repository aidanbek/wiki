Определяют видимость uncommitted/concurrent changes. Read uncommitted < Read committed < Repeatable read < Serializable.
Защита от: dirty reads, non-repeatable reads, phantom reads. Serializable самый строгий, но медленнее. Default часто
Read committed.
