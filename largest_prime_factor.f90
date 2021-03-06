       program largest_prime_factor
!
!      This program will use will take a given value and find all of its
!      prime values and store them in a single vector. It will then go
!      through and find all of he prime numbers in that vector and store
!      them in a seperate vector. The last vector will then be searched
!      for the largest value, (which I think if I write this correctly
!      will just be the last value).
!
!      Vincent Martinetto
!
       implicit none
       integer :: i, y 
       real ::  m
       integer*8 :: x = 600851475143 
!
!      this while loop extracts all 2s from the input number n if there
!      are any present
!
       do while (mod(x,2).eq.0)
         x = x/2
         print *, 2
       end do
!
!      after removing all 2s from the number the left over will be odd
!      therefore any factors left will be odd. this double loop iterates
!      over all the odd factors left and removes them from n. the sqrt
!      removes redudndant integers from having to be checked.
!
       m = real(x)
       y = (int(SQRT(m)))+1
       do i = 3,y,2
         do while (mod(x,i).eq.0)
           x = x/i
           print *, i
         end do
       end do
!
!      this last section just checks it n isn't 1 then it is prime and
!      it prints it
!
       if (x.ge.2) then
         print *, x
       end if
!
       end program
