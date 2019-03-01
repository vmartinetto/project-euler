      program sum_square_difference_better
!
      implicit none
      real :: limit, summ, sum_sq, diff
!
!     takes the upper bound to do the sum square difference of
!
      print *, 'what is your range 1 to x:'
      read *, limit
!
!     calculats the sum of the range and sum of the squares
!
      summ = (limit*(limit+1))/2
      sum_sq = (limit/6)*(2*limit+1)*(limit+1)
!
!     calculates the square of the sum
! 
      summ = summ**2
!
!     calculates difference and prints it as an integer
!
      diff = summ - sum_sq
      print *, int(diff)
!
      end program sum_square_difference_better
