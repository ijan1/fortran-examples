program roman
        integer :: i, huns, tens, ones
        character huns_s(9)*4 
        character tens_s(9)*4 
        character ones_s(9)*4 

        huns_s = (/ 'c   ', 'cc  ', 'ccc ', 'cd  ', 'd   ', 'dc  ', 'dcc ', 'dccc', 'cm  ' /)
        tens_s = (/ 'x   ', 'xx  ', 'xxx ', 'xl  ', 'l   ', 'lx  ', 'lxx ','lxxx', 'xc  ' /)
        ones_s = (/ 'i   ', 'ii  ', 'iii ', 'iv  ', 'v   ', 'vi  ', 'vii ','viii', 'ix  ' /)

        print *, 'Input a number between 0 and 999: '
        read (*,*) i

        huns = i / 100
        tens = mod(i,100)/10
        ones = mod(i,10) 

        select case (i)
            case (100:999)
                print *, trim(huns_s(huns)), trim(tens_s(tens)), trim(ones_s(ones))  
            case (10:99)
                print *, trim(tens_s(tens)), trim(ones_s(ones))  
            case (1:9)
                print *, trim(ones_s(ones))  
            case (0)
                print *, "Zero"
            case default
                print *, "Out of scope"
        end select
end program roman
