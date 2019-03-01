      program larprod13
!
      implicit none
      integer, parameter :: fileunit=10
      integer :: Ierror, i, j, k
      integer*8 :: largest
      integer*8, dimension(988) :: prod
      character(len=1000) :: s
      character(len=128)  :: filename
      character(len=13) :: numstr
!
       write(*,*) 'what is your input name(.txt included)'
       read (*,*) filename
!
       open(unit=fileunit, file=trim(filename), status='old', &
          iostat=Ierror)
       if (Ierror.ne.0) then
         write(*,*) 'file does not exist'
         goto 999
       end if
!
       read(fileunit,*) s
!
       do i = 1,988
         prod(i) = 1
         numstr = s(i:(i+12))
         do j = 1,13
           read(numstr(j:j),*) k
           prod(i) = prod(i)*k
         end do
       end do
!
       largest = 0
       do i = 1,size(prod)
         if (prod(i).ge.largest) then
           largest = prod(i)
         else
           cycle
         end if
       end do
       write(*,*) largest
!
 999   continue
       end program
