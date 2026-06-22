# Page-based Pagination

`?page=3&per_page=10` — обёртка над offset, которая прячет вычисление смещения. Дружелюбные, закладываемые в bookmark
URL, привычные для веб-интерфейсов.

## Что в ответе

- Total pages/items, текущая страница.
- Навигационные ссылки: first, last, next, prev.

## Минусы

- Те же, что у [offset-based](../offset-based/index.md): деградация производительности и неконсистентность при
  изменениях.
- Современные API предпочитают [cursor-based](../cursor-based/index.md) ради производительности.
