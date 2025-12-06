HTTP response headers improving browser security. Key headers:


- Strict-Transport-Security (HSTS): force HTTPS

- Content-Security-Policy (CSP): prevent XSS (whitelist resources)

- X-Frame-Options: prevent clickjacking

- X-Content-Type-Options: prevent MIME sniffing

- Referrer-Policy: control referrer information

Easy wins - add at reverse proxy/CDN level. Testing: securityheaders.com. CSP most complex (report-only mode for testing).
