      program pythagorean_triplets
!
      implicit none
      integer :: a, b, c
      integer*8 :: prod
!
!     the sum of the three is max three thousand so that is the range i
!     set for the loops. then a<b<c must be held so the second loop is
!     just a+1 to 1000. a third loop is unnesecarry because c is just
!     1000 - a - b, then we loop through b some more.
!
      do a = 1,1000
        do b = a+1, 1000
          c = 1000 - a - b
           if ((a*a+b*b).eq.(c*c)) then
             print *, a, b, c
             prod = a*b*c
             print *, prod
           end if
        end do
      end do
!
      end program
