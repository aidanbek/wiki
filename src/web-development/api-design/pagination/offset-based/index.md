?offset=20&limit=10 skips records, returns batch. Simple, allows jumping to page N. Drawbacks: performance degrades (
database scans offset rows), inconsistent results (new items shift positions). Inefficient for large offsets (OFFSET
1000000 slow). Use cases: small datasets, admin panels. Avoid для large-scale APIs, mobile apps.
