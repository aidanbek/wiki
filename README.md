# Wiki

Персональная инженерная вики — конспекты и заметки по разработке ПО, собранные
в виде книги на [mdBook](https://rust-lang.github.io/mdBook/) и опубликованной
на GitHub Pages: **https://aidanbek.github.io/wiki/**

## Что внутри

Контент лежит в `src/`, разбит по верхнеуровневым разделам:

- **AI / LLM Engineering** — агенты, эмбеддинги, prompt engineering, RAG, векторные БД
- **Books** — карточки-конспекты прочитанных книг
- **Cloud Platforms** — FinOps, регионы и зоны доступности, модели сервисов, Well-Architected
- **Databases** — CDC, паттерны консистентности, моделирование данных, миграции, NoSQL, производительность
- **Distributed Systems** — распределённые системы
- **Engineering Practices** — инженерные практики
- **Fundamentals** — базовые концепции
- **Infrastructure** / **Infrastructure as Code (IaC)**
- **Languages** — языки программирования
- **Operational Excellence**
- **Security**
- **System Design**
- **Testing**
- **Tools & Setup**
- **Web Development**

Каждый раздел и подраздел — это каталог с `index.md`; вложенность отражает
иерархию тем.

## Локальная сборка

Нужны [`mdbook`](https://rust-lang.github.io/mdBook/) и
[`mdbook-linkcheck`](https://github.com/Michael-F-Bryan/mdbook-linkcheck).

```bash
./summarize.sh   # перегенерировать src/SUMMARY.md из дерева каталогов
mdbook serve     # собрать и поднять локальный сервер с live-reload
mdbook build     # просто собрать (HTML кладётся в book/html)
```

Особенности конфигурации (`book.toml`): включены MathJax, полнотекстовый поиск и
сворачиваемое дерево разделов в сайдбаре. `mdbook-linkcheck` проверяет внутренние
ссылки и валит сборку при битой ссылке.

## Скрипты

| Скрипт          | Назначение                                                            |
| --------------- | -------------------------------------------------------------------- |
| `summarize.sh`  | Генерирует `src/SUMMARY.md`, обходя дерево; заголовок берёт из H1 или из имени каталога |
| `fill.sh`       | Создаёт пустые `index.md` в каталогах, где их ещё нет                 |
| `list.sh`       | Выводит список всех каталогов контента                                |
| `tree.sh`       | Показывает дерево каталогов                                           |

## Деплой

Workflow `.github/workflows/mdbook.yml` при пуше в `master` перегенерирует
`SUMMARY.md`, собирает книгу через mdBook и публикует `book/html` на GitHub Pages.
