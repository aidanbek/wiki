Determining what authenticated user can access. Happens after authentication. Models: RBAC (role-based), ABAC (
attribute-based), ACLs (access control lists). Centralized authorization service или embedded в application. Checks:
resource ownership, permission grants, policy evaluation. Horizontal privilege escalation (access other user's data),
vertical (access admin functions) must be prevented. Every endpoint requires authorization check, not just
authentication. Fail closed (deny by default).
