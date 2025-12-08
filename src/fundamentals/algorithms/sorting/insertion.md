# Сортировка вставками / Insertion sort

Элементы входной последовательности просматриваются по одному, и каждый новый поступивший элемент размещается в
подходящее место среди ранее упорядоченных элементов.

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
