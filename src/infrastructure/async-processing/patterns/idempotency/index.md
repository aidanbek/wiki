Multiple identical requests same effect as single request. Critical для safe retries. Implementation: unique request
IDs, database constraints. HTTP: GET, PUT, DELETE idempotent by standard; POST not. Payment processing must be
idempotent (no double charges). State machines help track.
