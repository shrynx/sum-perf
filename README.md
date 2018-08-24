# big sum
> benchmarking a problem statement in Haskell

## Problem Statement
sum all numbers from 0 - 10^8 which are divisible by 7, but not divisible by 5

## Result

[Report](https://file-wmpmdiepmi.now.sh/)

```
benchmarking big sum/naive
time                 1.422 s    (1.036 s .. 1.604 s)
                     0.991 R²   (0.977 R² .. 1.000 R²)
mean                 1.430 s    (1.374 s .. 1.467 s)
std dev              56.33 ms   (0.0 s .. 65.02 ms)
variance introduced by outliers: 19% (moderately inflated)

benchmarking big sum/orignal
time                 35.02 ms   (34.69 ms .. 35.70 ms)
                     0.999 R²   (0.998 R² .. 1.000 R²)
mean                 34.99 ms   (34.81 ms .. 35.23 ms)
std dev              404.8 μs   (266.9 μs .. 626.9 μs)

benchmarking big sum/tail recursion
time                 153.2 ms   (151.9 ms .. 153.6 ms)
                     1.000 R²   (1.000 R² .. 1.000 R²)
mean                 152.7 ms   (152.4 ms .. 153.0 ms)
std dev              421.1 μs   (277.1 μs .. 589.1 μs)
variance introduced by outliers: 12% (moderately inflated)

benchmarking big sum/state ref
time                 2.426 s    (1.375 s .. 3.458 s)
                     0.964 R²   (0.962 R² .. 1.000 R²)
mean                 2.701 s    (2.416 s .. 2.870 s)
std dev              259.4 ms   (0.0 s .. 293.0 ms)
variance introduced by outliers: 22% (moderately inflated)
```

```
Mac OS X
10.13.6
The Glorious Glasgow Haskell Compilation System, version 8.2.2
```