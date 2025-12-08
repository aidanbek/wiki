Cross-Site Scripting: injecting malicious scripts into trusted websites. Types: stored (persisted в database),
reflected (URL parameters), DOM-based (client-side JS). Consequences: session hijacking, credential theft, defacement.
Prevention: output encoding (HTML entities), Content Security Policy headers (whitelist script sources), input
validation, sanitization libraries (DOMPurify), template engines auto-escape. Never insert untrusted data into
JavaScript contexts, HTML attributes, CSS.
