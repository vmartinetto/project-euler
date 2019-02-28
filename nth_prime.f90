       program nth_prime
!
       implicit none
       integer :: n, i=4, x=3, d, nth
       real :: sq, re
!
       print *, 'what prime do you want?'
       read *, n
!
       do while (x.le.n)
         re = real(i)
         sq = (int(sqrt(re)))+1
         do d = 2,sq
           if (mod(i,d).eq.0) then
             exit
           else if (d.eq.sq) then
             x = x + 1
           else
             cycle
           end if
         end do
         if (x.eq.n) then
           nth = i
           exit
         end if
         i = i + 1
       end do
!
       print *, nth
!
       end program
