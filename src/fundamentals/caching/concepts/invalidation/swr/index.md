# SWR (Stale-While-Revalidate)

Отдать stale-данные немедленно и обновить их в фоне — оптимизация под UX.

## Как работает

- `Cache-Control: max-age=300, stale-while-revalidate=3600`: 5 минут fresh, следующий час отдаётся stale + триггерит
  refresh.
- Пользователь не ждёт fetch; следующий запрос получит уже свежее.

## Когда использовать

- Данные, где допустима лёгкая устаревалость; поддержано в React Query, SWR, HTTP Cache-Control (ср. refresh).
