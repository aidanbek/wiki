Failed messages after max retries moved to DLQ. Prevents blocking main queue. Manual inspection/reprocessing. Alerts on
DLQ growth. Use cases: debugging, data recovery. Permanent failures (bad data format) go directly to DLQ.
