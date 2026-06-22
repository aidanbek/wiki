# Threads vs Processes

Process — независимая единица выполнения со своим address space; thread — лёгкая единица внутри процесса, разделяющая
память с другими threads.

## Сравнение

- Threads дешевле создавать и переключать (shared memory); processes изолированы — крах одного не убивает другой.
- IPC дороже (pipes, sockets, shared memory); inter-thread communication — через общие переменные.

## Когда что

- Processes — для изоляции и security; threads — для concurrency внутри приложения.
