Set Operations (Операции над множествами)

Базовые операции для работы с коллекциями уникальных элементов - union (объединение), intersection (пересечение),
difference (разность), symmetric difference, subset check. Union A∪B содержит элементы из обоих множеств, intersection
A∩B - только общие, difference A\B - элементы A не входящие в B. Membership test (contains) - O(1) для hash set, O(log
n) для tree set. Реализация зависит от underlying структуры: HashSet для fast average case, TreeSet для ordered
operations и range queries, BitSet для компактности при известном universe. Используются в фильтрации данных, поиске
дубликатов, анализе пересечений, реляционных операциях баз данных. Выбор структуры critical - HashSet для general
purpose, TreeSet когда нужен порядок, BitSet для плотных integer sets.
