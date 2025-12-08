Signature verification: HMAC-SHA256 signature в header, computed from payload + secret. Prevents tampering, validates
sender identity. HTTPS mandatory для confidentiality. IP whitelisting restricts sources. Timestamp validation prevents
replay attacks (reject old webhooks). Secret rotation procedures. Rate limiting prevents abuse. Consumer should validate
payload schema, sanitize data. Mutual TLS для high-security scenarios.
