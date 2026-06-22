# Encryption at Rest

Шифрование хранимых данных: БД, файловых систем, бэкапов, архивов. Защищает на случай, если физический носитель украли
или утилизировали неправильно — без ключа данные бесполезны.

## Уровни

- Full disk encryption (LUKS, BitLocker) — шифруется весь диск целиком.
- Application-level — приложение шифрует конкретные поля до записи.
- TDE (Transparent Data Encryption) — прозрачное шифрование внутри СУБД.

## Что важно

- Key management критичен — зашифрованные данные бесполезны без ключей (
  см. [key-management](../key-management/index.md)).
- Performance overhead минимален на современных CPU (AES-NI).
- Часто требуется compliance (PCI-DSS, HIPAA, GDPR).
