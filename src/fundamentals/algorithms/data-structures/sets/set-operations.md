Set Operations (Операции над множествами)

Базовые операции над коллекциями уникальных элементов.

## Операции

- Union A∪B (всё из обоих), intersection A∩B (только общие), difference A\B (из A без B), symmetric difference, subset
  check.
- Membership (contains): O(1) для HashSet, O(log n) для TreeSet.

## Выбор структуры

- HashSet — general purpose; TreeSet — нужен порядок и range queries; BitSet — плотные integer-множества.
- Применение: фильтрация, поиск дубликатов, реляционные операции БД.
