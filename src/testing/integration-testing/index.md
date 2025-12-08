Testing взаимодействий между components/modules/services. Verifies interfaces, data flow, communication protocols
работают together. Scope: narrower чем E2E (subset системы), broader чем unit tests. Examples: API endpoints с database,
service-to-service calls, message queue producers/consumers. Challenges: test environment setup (databases,
dependencies), test data management, slower чем unit tests. Tools: TestContainers для dependencies, Postman/REST Assured
для API testing. Run after unit tests в CI pipeline.
