Strategy

Семейство взаимозаменяемых алгоритмов, инкапсулированных и выбираемых runtime - делегирование алгоритма отдельному
объекту. Context использует Strategy интерфейс, ConcreteStrategy реализует алгоритм. Sorting algorithms, payment
methods, compression algorithms. Устраняет conditional logic, алгоритм независим от клиентов, runtime выбор.
Open/Closed - новые стратегии без изменения Context.
