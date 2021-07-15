program circle
        implicit none
        Integer, parameter :: dp = Selected_real_kind( 12, 70)
        real(dp), parameter :: PI = 3.1415900_dp !using KIND values to increase precisio
        real(dp) :: rad
        print *, 'Please input your circle radius: '
        read(*,*) rad
        if (rad .lt. 0) then
                print *, 'Invalid number'
                call exit(0)
        end if
        write(*,*) 'Your circle area is: ', pi*rad**2

end program circle
