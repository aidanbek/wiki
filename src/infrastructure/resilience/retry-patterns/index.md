Automatic retry failed operations. Exponential backoff (increasing delays) prevents thundering herd. Max retries limit
для avoiding infinite loops. Idempotency required (retries don't cause duplicates). Jitter добавляет randomness to
delays. Distinguish transient (retry) vs permanent (fail) errors.
