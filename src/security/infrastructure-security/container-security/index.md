Securing containerized workloads. Image security: scan for vulnerabilities, minimal base images (distroless, Alpine), no
secrets в images, signed images. Runtime: run as non-root, read-only filesystems, resource limits, security contexts (
AppArmor, SELinux). Network policies restrict pod communication. RBAC для K8s API access. Admission controllers enforce
policies (OPA, Kyverno). Supply chain security: verify provenance, SBOM (Software Bill of Materials).
