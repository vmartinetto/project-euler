       program nth_prime
!
       implicit none
       integer :: n, i=4, d
       integer*8 :: total = 5
       real :: sq, re
!
       print *, 'what number do you want the sum of primes below?'
       read *, n
!
!      this finds the nth prime that is asked for by itereating over x as the
!      number of prime in the sequence and i as the actual number. n is the
!      target number prime used for the do while loop. to find if i is prime
!      it's square root is taken and 1 is added to its value and stored in
!      sq. a loop then iterates over 2 to sq and if anything ever divides
!      into it evenly the number is thrown out. if the number is a prime it
!      is also discarded but x is increased by 1. 
!      This is slightl modified from my previous code to iterate up to
!      chosen value and add all primes found up to selected number.
!
       do while (i.le.n)
         re = real(i)
         sq = (int(sqrt(re)))+1
         do d = 2,sq
           if (mod(i,d).eq.0) then
             exit
           else if (d.eq.sq) then
             total = total + i
           end if
         end do
         i = i + 1
       end do
!
!      prints wanted value
!
       print *, total
!
!
!
       end program
