# Insertion Sort (Сортировка вставками)

Берём элементы по одному и вставляем каждый на своё место среди уже упорядоченных слева.

## Сложность

- Best O(n) (почти отсортирован), Average/Worst O(n²). In-place, stable, adaptive.

## Как работает

- Левая часть всегда отсортирована; новый элемент «просачивается» влево обменами, пока не встанет на место.
- Один из лучших на малых и почти отсортированных массивах — отсюда переход на него в quicksort/mergesort на коротких
  подмассивах.

```php
<?php

/**
 * Worst O(n^2)
 * Average O(n^2)
 * Best O(n)
 */ 
function insertSort(array $arr): array {
    $count = count($arr); 
     
    for ($i = 1; $i < $count; $i++) {
        for ($j = $i; $j >= 1 && $arr[$j] < $arr[$j-1]; $j--) {
           [$arr[$j], $arr[$j-1]] = [$arr[$j-1], $arr[$j]];
        }
    }
  
    return $arr;
}

print_r(insertSort([3,4,1,2,5,9,6,7,8]));
```
