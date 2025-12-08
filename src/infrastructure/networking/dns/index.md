Domain Name System translates hostnames → IP addresses. Hierarchical (root → TLD → authoritative servers). Recursive
resolvers cache responses (TTL). Records: A (IPv4), AAAA (IPv6), CNAME (alias), MX (mail), TXT (metadata). Slow
propagation при changes (TTL + caching). Critical для service discovery, load balancing (DNS round-robin).
