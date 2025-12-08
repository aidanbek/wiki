Producer-Consumer

Разделение производителя данных и потребителя через буфер - decoupling, asynchronous processing. Producer генерирует
items, кладёт в shared queue. Consumer извлекает items, обрабатывает. Bounded buffer с блокировкой на полном/пустом
состоянии - producer ждёт когда освободится место, consumer ждёт когда появятся данные. Реализация через BlockingQueue,
semaphores (empty/full counts), condition variables. Используется в pipelines, message queues, event processing, I/O
buffering.
