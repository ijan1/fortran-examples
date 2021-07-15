program numbers_test
        implicit NONE

        Integer, Parameter :: dp = Selected_real_kind( 12, 70 )

        character :: a

        integer :: i = 789

        logical :: l

        complex :: c
        real :: x = 123.56

        Real( dp ) :: d = 123.56d0
        Complex( dp ) :: dc

        write (*,*) 'Kinds'
        write (*,*) '*****'
        write (*,*) 'Character kind = ', kind(a)
        write (*,*) 'Complex kind = ', kind(c)
        write (*,*) 'Double Precision kid = ',kind(d)
        write (*,*) 'Integer kind = ',kind(i)
        write (*,*) 'Logical kind = ',kind(l)
        write (*,*) 'Real kind = ',kind(x)

        end program numbers_test
