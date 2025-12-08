Определяет интерфейс создания объекта, но позволяет подклассам решать какой класс инстанцировать - делегирование
создания подклассам. Creator объявляет createProduct(), ConcreteCreator переопределяет, возвращая ConcreteProduct.
DocumentCreator.createDocument() - WordCreator возвращает WordDocument, PDFCreator возвращает PDFDocument. Dependency
Inversion - Creator зависит от Product интерфейса. Параллельные иерархии Creator-Product.
