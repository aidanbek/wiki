Test Strategies

Общий подход к тестированию: что тестировать, насколько подробно и когда. Суть — осознанно распределять усилия, потому
что не весь код требует одинакового покрытия.

## Testing pyramid

- Много unit-тестов (основание) → меньше integration (середина) → мало E2E (вершина).
- Trade-off: confidence vs speed vs maintenance — чем выше по пирамиде, тем дороже и медленнее.

## Подходы

- Shift-left — тестировать раньше в цикле разработки, ловить дешевле.
- Risk-based testing — приоритет на высокорисковые области.
- Test quadrants (Agile): automated (unit, integration) vs manual (exploratory, usability), technology- vs business-facing.
- Continuous Testing встроено в CI/CD.

## Метрики

- Code coverage, test execution time.
- Flakiness rate — доля нестабильных тестов.
- Defect escape rate — сколько багов утекло в production (главный показатель пользы).
