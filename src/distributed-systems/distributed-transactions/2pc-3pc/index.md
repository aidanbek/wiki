Two-Phase Commit: coordinator запрашивает prepare, затем commit/abort. Blocking protocol - если coordinator fails во
время commit, участники ждут. Three-Phase Commit добавляет pre-commit phase для non-blocking. Редко используется из-за
latency и coordination overhead. XA transactions в databases - пример 2PC.
