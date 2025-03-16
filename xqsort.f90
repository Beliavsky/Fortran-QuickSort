program test_qsort
  use kind_mod, only: dp
  use qsort_mod, only: indexx, quick_sort_in_place
  implicit none

  ! Test variables
  integer, parameter :: nfew = 5, nbig=10**6
  real(dp) :: x(nbig), real_array(nfew) = [5.2_dp, 1.1_dp, 4.9_dp, 2.3_dp, 3.7_dp]
  integer  :: int_array(nfew)  = [5, 1, 4, 2, 3]
  integer  :: iord_real(nfew), iord_int(nfew)
  character (len=*), parameter :: fmt_cr = "(a,*(1x,f0.3))", &
     fmt_ci= "(a,*(1x,i0))"
  ! Test indexx_real
  print *, "Testing indexx_real with real array:"
  print fmt_cr, "Original array:", real_array
  iord_real = indexx(real_array)
  print fmt_ci, "Sorted indices:", iord_real
  print fmt_cr, "Sorted array:", real_array(iord_real)
  print fmt_cr, "Original array (unchanged):", real_array
  call quick_sort_in_place(real_array)
  print fmt_cr, "Sorted array:", real_array
  print *

  ! Test indexx_int
  print *, "Testing indexx_int with integer array:"
  print fmt_ci, "Original array:", int_array
  iord_int = indexx(int_array)
  print fmt_ci, "Sorted indices:", iord_int
  print fmt_ci, "Array in sorted order:", int_array(iord_int)
  print fmt_ci, "Original array (unchanged):", int_array

  print "(/,a, i0)", "Testing with large real array of size ", size(x)
  call random_number(x)
  print "(a,*(1x,f0.6))", "first few:", x(:4)
  call quick_sort_in_place(x)
  print "(a,*(1x,f0.6))", "min, max:", minval(x), maxval(x)
  print*,"sorted?", all(x(2:) >= x(:nbig-1))
end program test_qsort
