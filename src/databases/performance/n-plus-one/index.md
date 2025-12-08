Anti-pattern: 1 query для списка + N queries для связанных данных каждого элемента. Типично в ORM при lazy loading.
Решения: eager loading (JOIN/subquery), batch loading (DataLoader pattern), caching. Превращает N+1 queries в 1-2
queries.
