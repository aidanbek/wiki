Security model assuming breach: "never trust, always verify". No implicit trust based on network location (
inside/outside perimeter). Every access request authenticated, authorized, encrypted regardless of origin. Principles:
verify identity, least privilege access, assume breach, inspect/log all traffic. Implementation: strong authentication (
MFA), micro-segmentation, continuous monitoring. Replaces castle-and-moat model. Reduces lateral movement after breach.
Requires identity-aware proxies, policy enforcement points.
