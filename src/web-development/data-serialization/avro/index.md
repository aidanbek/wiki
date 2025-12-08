Apache binary format popular в big data (Hadoop, Kafka). Schema в JSON, compact binary encoding. Schema evolution:
reader/writer schemas can differ (resolved at read time). Schema registry (Confluent) stores versions. Self-describing (
schema embedded или referenced). Dynamic typing (no code generation required). Use cases: data pipelines, event streams,
long-term storage. Compared to Protobuf: more flexible schema evolution, larger payloads.
