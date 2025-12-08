Long-running tasks executed outside request/response cycle. Examples: sending emails, processing videos, generating
reports. Worker processes poll queue. Result storage (database, cache) for later retrieval. Job libraries handle
serialization, retry, monitoring. Prevents API timeouts.
