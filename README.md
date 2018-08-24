# big sum
> benchmarking a problem statement in Haskell

## Problem Statement
sum all numbers from 0 - 10^8 which are divisible by 7, but not divisible by 5

## Result

[Report](https://file-ifuzcgecib.now.sh)

```
benchmarking big sum/naive
time                 1.579 s    (1.404 s .. 1.998 s)
                     0.992 R²   (0.979 R² .. 1.000 R²)
mean                 1.667 s    (1.597 s .. 1.728 s)
std dev              98.95 ms   (277.6 as .. 106.0 ms)
variance introduced by outliers: 19% (moderately inflated)

benchmarking big sum/original
time                 36.11 ms   (35.37 ms .. 36.76 ms)
                     0.999 R²   (0.998 R² .. 1.000 R²)
mean                 35.83 ms   (35.59 ms .. 36.19 ms)
std dev              603.4 μs   (388.7 μs .. 896.1 μs)

benchmarking big sum/list comprehension
time                 205.1 ms   (183.2 ms .. 221.3 ms)
                     0.998 R²   (0.998 R² .. 1.000 R²)
mean                 197.7 ms   (191.9 ms .. 201.6 ms)
std dev              5.843 ms   (0.0 s .. 6.747 ms)
variance introduced by outliers: 19% (moderately inflated)

benchmarking big sum/drop every
time                 60.97 ms   (56.10 ms .. 67.26 ms)
                     0.998 R²   (0.998 R² .. 1.000 R²)
mean                 61.44 ms   (60.76 ms .. 61.98 ms)
std dev              843.9 μs   (0.0 s .. 939.2 μs)
variance introduced by outliers: 19% (moderately inflated)

benchmarking big sum/tail recursion
time                 157.2 ms   (155.5 ms .. 158.3 ms)
                     1.000 R²   (1.000 R² .. 1.000 R²)
mean                 159.2 ms   (158.2 ms .. 161.9 ms)
std dev              2.128 ms   (177.9 μs .. 2.968 ms)
variance introduced by outliers: 12% (moderately inflated)

benchmarking big sum/state ref
time                 5.041 s    (4.238 s .. 6.896 s)
                     0.984 R²   (0.972 R² .. 1.000 R²)
mean                 4.472 s    (4.250 s .. 4.911 s)
std dev              380.2 ms   (0.0 s .. 381.8 ms)
variance introduced by outliers: 22% (moderately inflated)

benchmarking big sum/random
time                 51.91 ms   (49.35 ms .. 54.00 ms)
                     0.994 R²   (0.984 R² .. 0.998 R²)
mean                 49.90 ms   (48.11 ms .. 51.24 ms)
std dev              2.816 ms   (1.511 ms .. 3.900 ms)
variance introduced by outliers: 14% (moderately inflated)
```

```
Mac OS X
10.13.6
The Glorious Glasgow Haskell Compilation System, version 8.2.2
```
