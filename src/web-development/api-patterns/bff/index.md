Backend For Frontend: API gateway tailored to specific client. Separate BFFs для mobile, web, TV, partners. Customizes:
payload shape (mobile needs smaller responses), aggregation logic, authentication flows. Benefits: client-optimized
APIs, independent evolution, team ownership (frontend team owns BFF). Trade-offs: code duplication (shared libraries
help), operational overhead (more services). GraphQL BFFs allow clients to query exactly needed data.
