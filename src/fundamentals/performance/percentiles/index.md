Statistical measures dividing distribution. p50 (median): half below, half above. p95: 95% faster, 5% slower (tail
latency). p99/p99.9 for outliers. Better чем average - not affected by extreme outliers, represents user experience.
SLOs typically percentile-based: "p99 latency < 100ms". Calculation: sort values, find position. Approximation
algorithms для streaming data: t-digest, HdrHistogram. Aggregation challenge: can't average percentiles (use histograms,
merge distributions). Monitoring tools: Prometheus histograms, Datadog percentiles. Visualize: line charts over time,
heatmaps для distribution.
