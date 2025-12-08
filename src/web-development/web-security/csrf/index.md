Cross-Site Request Forgery: attacker tricks user's browser into making unwanted request to victim site where user
authenticated. Exploits browser automatically sending cookies. Mitigation: CSRF tokens (unpredictable value в
form/header, validated server-side), SameSite cookie attribute (Strict/Lax prevents cross-site sending), double-submit
cookie pattern. GET requests should be safe (no state changes). Modern frameworks often include CSRF protection.
