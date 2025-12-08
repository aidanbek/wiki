Runtime toggles controlling feature availability without deployment. Types: release toggles (incomplete features),
experiment toggles (A/B testing), ops toggles (circuit breakers), permission toggles (premium features). Gradual
rollouts: enable для percentage users, specific cohorts. Instant rollback без code changes. Tools: LaunchDarkly,
Unleash, custom implementations. Technical debt: remove flags after full rollout, flag sprawl complicates code.
Monitoring flag usage, A/B test results.
