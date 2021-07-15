program magic
        integer :: i,m
        logical :: l = .true. 

        outer:do while (l .eqv. .true.)
        print *, 'Enter a positive integer: '
        read (*,*) i
        if (i == 0) then
                call exit(0)
        end if

        do while(i > 0 .and. i /= 1)
        if(mod(i,2) == 0) then
                i = i /2
        else
                i = (i*3)+1
        end if
        print *, i
        if (i == 13) then
                print *, 'Unlucky number encoutered'
                cycle outer
        end if
        end do
        end do outer
end program magic
