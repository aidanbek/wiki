Lamport clocks присваивают каждому event счетчик, инкрементируемый при операциях и message passing. Не отражают
wall-clock time, но гарантируют partial ordering: если A → B, то clock(A) < clock(B). Используется для detecting
causality violations.
