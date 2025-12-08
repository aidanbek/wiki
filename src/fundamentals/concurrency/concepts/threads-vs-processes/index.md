Threads vs Processes

Process - независимая единица выполнения с собственным address space, ресурсами, изолированная от других. Thread -
lightweight единица выполнения внутри процесса, разделяющая address space и ресурсы с другими threads. Threads дешевле
создавать/переключать (shared memory), processes изолированы (crash одного не убивает другой). Inter-process
communication (IPC) дороже - pipes, sockets, shared memory. Inter-thread communication простое - shared variables.
Processes для изоляции и security, threads для concurrency внутри приложения.
