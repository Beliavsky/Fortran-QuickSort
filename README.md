# Fortran QuickSort
Quicksort via pure procedures, adapted from Alan Miller's [qsort.f90](https://jblevins.org/mirror/amiller/qsort.f90). Compiling with `gfortran kind.f90 qsort xqsort.f90` and running gives sample output

```
 Testing indexx_real with real array:
Original array: 5.200 1.100 4.900 2.300 3.700
Sorted indices: 2 4 5 3 1
Sorted array: 1.100 2.300 3.700 4.900 5.200
Original array (unchanged): 5.200 1.100 4.900 2.300 3.700
Sorted array: 1.100 2.300 3.700 4.900 5.200

 Testing indexx_int with integer array:
Original array: 5 1 4 2 3
Sorted indices: 2 4 5 3 1
Array in sorted order: 1 2 3 4 5
Original array (unchanged): 5 1 4 2 3

Testing with large real array of size 1000000
first few: .083615 .085507 .864007 .701905
min, max: .000002 .999998
 sorted? T
```
