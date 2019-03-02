      program grid_product
!
      implicit none
      integer, parameter :: gridunit=10
      real, dimension(20,20) :: grid
      character(len=128) :: gridname
      integer :: ioerror,i,j
!
      write (*,*) 'whate is the name of the .txt with the 20x20 grid?'
      read (*,*) gridname
!
      open (unit=gridunit,file=trim(gridname),status='old',&
        iostat=ioerror)
      if (ioerror.ne.0) then
        write (*,*) 'file does not exist, exiting'
        goto 999
      end if
!
      do i = 1,20
        read (gridunit,*) grid(i,1),grid(i,2),grid(i,3),grid(i,4)&
          grid(i,5),grid(i,6),grid(i,7),grid(i,8),grid(i,9),grid(i,10)& 
          grid(i,11),grid(i,12),grid(i,13),grid(i,14),grid(i,15)& 
          grid(i,16),grid(i,17),grid(i,18),grid(i,19),grid(i,20)
        print*, grid
      end do
!
999   continue
      end program 
