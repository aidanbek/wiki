# Concurrency Patterns

Проверенные решения для организации параллельных вычислений: coordination, communication, resource management.

## Идея

- Прячут низкоуровневую синхронизацию в higher-level конструкции, балансируя performance, корректность и
  поддерживаемость.
- Обычно встроены в библиотеки (ExecutorService, Task Parallel Library, async/await), но полезно понимать механику.

## Паттерны

- **Producer-Consumer** — развязка через буфер.
- **Reader-Writer** — много читателей, один писатель.
- **Thread Pool** — переиспользование потоков.
