      program sum_square_difference
!
!     this program will calculate the sum of the square of a range of
!     numbers and the square of the sum of the same range. It will then
!     output the difference of the two.
!
      implicit none
      integer :: x=0,y=0,z,i
!
!     this is calculating the sum of the squares and the sum of the
!     range
!
      do i = 1,100
        x = x + i**2
        y = y + i
      end do
!
!     this then squres the sum, takes the difference of the two, and
!     prints said difference
!
      y = y**2
      z = y - x
      print *, z
!
      end program sum_square_difference
