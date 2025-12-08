Securing cryptographic keys through lifecycle: generation (strong randomness), storage (HSMs, KMS), distribution,
rotation, destruction. Key hierarchy: master key encrypts data keys (envelope encryption). Separation of duties: no
single person accesses keys. AWS KMS, Azure Key Vault, HashiCorp Vault automate management. Regular rotation limits
exposure window. Backup keys encrypted, stored separately. Audit all key operations.
