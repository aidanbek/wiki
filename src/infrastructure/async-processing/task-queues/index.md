Asynchronous job processing: producer enqueues, workers consume. Decouples request/response (improves API latency).
Priority queues for urgent tasks. Worker scaling based on queue depth. Tools: Celery, Sidekiq, Bull. Persistent queues
survive crashes. Monitoring: queue length, processing time, failure rate.
