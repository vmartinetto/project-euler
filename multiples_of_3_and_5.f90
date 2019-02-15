       program multiples_of_3_and_5
!
       implicit none
       integer :: i=0,x
!
       do x = 1,999
         if (mod(x,3).eq.0) then
           i = i + x
         else if (mod(x,5).eq.0) then
           i = i + x
         end if
       end do
!
       print *, i
!
       end program multiples_of_3_and_5
