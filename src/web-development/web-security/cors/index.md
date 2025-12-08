Cross-Origin Resource Sharing: browser security restricting cross-origin HTTP requests. Same-origin policy prevents
JavaScript от reading responses from different origin (protocol+domain+port). CORS headers allow server to permit
cross-origin access. Preflight (OPTIONS request) для non-simple requests. Headers: Access-Control-Allow-Origin (
whitelist domains), Access-Control-Allow-Methods, Access-Control-Allow-Credentials (cookies). Wildcard (*) insecure with
credentials. Misconfigured CORS enables XSS exploitation.
