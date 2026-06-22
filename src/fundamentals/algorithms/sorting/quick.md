# Quick Sort (Быстрая сортировка)

Divide and conquer: выбираем опорный элемент (pivot), разбиваем массив на «меньше pivot» и «больше pivot», рекурсивно
сортируем части.

## Сложность

- Average/Best O(n log n), Worst O(n²) (плохой pivot, например первый элемент на уже отсортированных данных). In-place,
  unstable.

## Выбор pivot

- На корректность не влияет, на эффективность — сильно. Первый элемент плох на отсортированных массивах.
- Используют средний, случайный элемент или медиану из первого/среднего/последнего; медиана всей последовательности
  оптимальна, но дорога.

## Как работает

- Разбиение на «меньше / равно / больше»; на практике делят на две части — это проще и эффективнее.
- Рекурсия по частям длиной больше единицы.

```php
<?php

/**
 * Worst O(n^2)
 * Average O(n logn)
 * Best  O(n logn)
 */ 
function quick(array $arr) : array {
    if (count($arr) < 2) {
        return $arr;
    } 
    
    $pivot = (int)(count($arr) / 2); // самый тупой выбор опорника 
    
    $less_arr = [];
    $more_arr = [];
    
    for ($i = 0; $i <count($arr); $i++) {
        if ($i == $pivot) {
            continue;
        }
        
        if ($arr[$i] < $arr[$pivot]) {
            $less_arr[] = $arr[$i];
        } else {
            $more_arr[] = $arr[$i];
        }
    }
     
    return array_merge(quick($less_arr), [$arr[$pivot]], quick($more_arr));
}

print_r(quick([3, 4, 1, 2, 5, 9, 6, 7, 8]));
```
