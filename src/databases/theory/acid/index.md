Atomicity: all-or-nothing. Consistency: valid state to valid state. Isolation: concurrent transactions не мешают друг
другу. Durability: committed data survives failures. Классическая модель RDBMS. Имплементация через write-ahead logging,
locking, MVCC.
