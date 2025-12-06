Паттерны взаимодействия объектов и распределения ответственности, определяющие как объекты общаются и координируются. Фокус на алгоритмах и assignment of responsibilities, не на структурах. Делают сложные потоки управления понятнее через объектификацию поведения. Часто используют composition/delegation вместо наследования для flexibility.

## Различия между схожими паттернами

### Strategy vs State

Оба инкапсулируют изменяемое поведение в отдельные классы. Strategy - семейство взаимозаменяемых алгоритмов, выбор клиентом. State - behaviour зависит от внутреннего состояния, переходы автоматические. Strategy про замену algorithm, State про state machine. Strategy stateless, State может хранить состояние. Strategy клиент выбирает, State Context или State управляют переходами.

### Template Method vs Strategy

Оба параметризуют изменяемое поведение. Template Method через наследование (подклассы override методы). Strategy через композицию (Context делегирует Strategy объекту). Template Method compile-time binding, Strategy runtime. Template Method статический выбор варианта, Strategy динамическая замена. Template Method проще для простых случаев, Strategy гибче и предпочтительнее (composition over inheritance).

### Command vs Strategy

Command инкапсулирует request as object (что делать + параметры), для queuing/logging/undo. Strategy инкапсулирует algorithm (как делать), для interchangeable behaviour. Command про action (verb), Strategy про method (algorithm). Command хранит receiver и params, Strategy stateless computation. Command для decoupling sender-receiver и undo, Strategy для runtime algorithm selection.

### Observer vs Mediator

Observer один Subject уведомляет многих Observers (broadcast). Mediator централизует many-to-many interactions (hub). Observer про notification of changes, Mediator про coordination of behavior. Observer Subject не знает о Observer классах, Mediator знает о Colleagues. Observer loose coupling одного к многим, Mediator tight coupling многих к одному (но colleagues decoupled from each other).

### State vs Strategy vs Command

Все три инкапсулируют behaviour в объекты. State behaviour зависит от состояния, переходы встроены. Strategy поведение выбирается клиентом, без переходов. Command behaviour инкапсулирован для execution/queuing/undo. State про state transitions, Strategy про algorithm selection, Command про request reification.

### Memento vs Command (для undo)

Memento сохраняет snapshot состояния для rollback, stateful. Command store inverse operation для undo, behavioural. Memento для сложных состояний (snapshot entire state), Command для transactional operations (reverse action). Memento дорогой по памяти, Command легковесный. Комбинация: Command с Memento для undo сложных изменений.

### Chain of Responsibility vs Decorator

Оба про chaining behaviour. CoR запрос проходит по цепи, один handler обрабатывает (может остановиться). Decorator каждый wrapper добавляет поведение, все выполняются. CoR про selecting handler (exclusive or), Decorator про stacking enhancements (additive). CoR динамическая цепочка с conditional processing, Decorator static wrapping с guaranteed execution.

### Visitor vs Strategy

Visitor операция над структурой объектов (double dispatch, externalize operations). Strategy алгоритм в Context (single dispatch, encapsulate algorithm). Visitor для операций над composite structures (tree traversal), Strategy для single object behaviour. Visitor сложнее (accept/visit), Strategy проще. Visitor когда много операций на стабильной структуре, Strategy когда мало операций с variability.

### Iterator встроен везде

Большинство языков имеют native iterator support (for-each, generators, IEnumerable). Явная реализация паттерна редко нужна - используй встроенные механизмы. Custom iterators для специфичных traversal стратегий (обход графа, lazy evaluation). Паттерн важен концептуально, но технически abstracted away языком.
