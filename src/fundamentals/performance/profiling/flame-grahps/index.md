Visualization of profiling data. X-axis: alphabetical (not time), width = frequency/time. Y-axis: call stack depth (root
at bottom). Hovering shows details. Identifies performance bottlenecks visually - wide boxes = optimization targets.
Types: CPU (on-CPU time), off-CPU (waiting time), memory (allocations). Invented by Brendan Gregg. Interactive
exploration drills down. Color coding: libraries, hot/cold, diff flames (comparing profiles). Tools generate from
profiler output (perf, DTrace, pprof). Essential для understanding complex call chains.
