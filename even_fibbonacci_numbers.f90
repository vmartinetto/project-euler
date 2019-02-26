       program even_fibonacci_numbers
!
       implicit none
       integer :: x=1,y=2,z=0
!
!
!
       do
         if (mod(x,2).eq.0) then
           z = z + x
         end if
         if (mod(y,2).eq.0) then
           z = z + y
         end if
         x = x + y
         y = x + y
         if ((x.or.y).ge.4000000) then 
           exit
         end if 
       end do 
!
!
!
       print *, z
!
!
!
       end program even_fibonacci_numbers
