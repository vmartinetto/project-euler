      program larprod13
!
      implicit none
      integer, parameter :: fileunit=10
      integer :: Ierror, i, j, k, ios
      integer*8 :: lsum = 0
      character(len=1000) :: s,cats
      character(len=128)  :: filename
      character(len=13) :: numstr
!
       write(*,*) 'what is your input name(.txt included)'
       read (*,*) filename
!
       open(unit=fileunit, file=trim(filename), status='old', &
          iostat=Ierror)
       if (Ierror.ne.0) then
         write(*,*) 'error opening input file'
         goto 999
       end if
!
!       do
         read(unit=fileunit,iostat=ios) s
         cats = trim(cats)//trim(s)
!         if (ios.le.0) then
!           exit
!         end if
!       end do
       cats = trim(cats)
!
       do i = 1,len(cats)
         read(cats(i:i),*) k
         lsum = lsum + k
         numstr = s(i:(i+12))
       end do
!
       print *, lsum
!
 999   continue
       end program
