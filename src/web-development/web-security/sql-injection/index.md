Injecting malicious SQL через user input. Example: username = "admin' OR '1'='1" bypasses authentication. Consequences:
data breach, deletion, privilege escalation. Prevention: parameterized queries/prepared statements (safest - SQL and
data separated), ORMs (automatic escaping), input validation (whitelist allowed characters), least privilege database
accounts (limit blast radius). Never concatenate user input into SQL strings. Web application firewalls detect common
patterns.
