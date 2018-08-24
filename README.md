# big sum
> benchmarking a problem statement in Haskell

## Problem Statement
sum all numbers from 0 - 10^8 which are divisible by 7, but not divisible by 5

## Result

[Report](https://file-xcxzeqipks.now.sh)

```
benchmarking big sum/naive
time                 1.413 s    (1.209 s .. 1.657 s)
                     0.997 R²   (NaN R² .. 1.000 R²)
mean                 1.545 s    (1.486 s .. 1.648 s)
std dev              89.28 ms   (0.0 s .. 93.42 ms)
variance introduced by outliers: 19% (moderately inflated)

benchmarking big sum/orignal
time                 34.91 ms   (34.43 ms .. 35.28 ms)
                     0.999 R²   (0.998 R² .. 1.000 R²)
mean                 35.76 ms   (35.42 ms .. 36.28 ms)
std dev              877.4 μs   (616.7 μs .. 1.125 ms)

benchmarking big sum/list comprehension
time                 192.8 ms   (174.9 ms .. 205.6 ms)
                     0.999 R²   (0.997 R² .. 1.000 R²)
mean                 193.5 ms   (189.7 ms .. 196.0 ms)
std dev              3.721 ms   (0.0 s .. 4.294 ms)
variance introduced by outliers: 19% (moderately inflated)

benchmarking big sum/drop every
time                 56.34 ms   (46.17 ms .. 65.02 ms)
                     0.994 R²   (0.994 R² .. 1.000 R²)
mean                 59.95 ms   (59.18 ms .. 60.44 ms)
std dev              734.9 μs   (0.0 s .. 844.1 μs)
variance introduced by outliers: 19% (moderately inflated)

benchmarking big sum/tail recursion
time                 161.4 ms   (159.0 ms .. 162.7 ms)
                     1.000 R²   (0.999 R² .. 1.000 R²)
mean                 161.1 ms   (159.8 ms .. 161.9 ms)
std dev              1.341 ms   (787.4 μs .. 1.978 ms)
variance introduced by outliers: 12% (moderately inflated)

benchmarking big sum/state ref
time                 4.910 s    (4.216 s .. 5.847 s)
                     0.994 R²   (0.993 R² .. 1.000 R²)
mean                 5.105 s    (4.891 s .. 5.245 s)
std dev              209.6 ms   (0.0 s .. 241.8 ms)
variance introduced by outliers: 19% (moderately inflated)
```

```
Mac OS X
10.13.6
The Glorious Glasgow Haskell Compilation System, version 8.2.2
```
