!!!
!!!  Port of FizzBuzz from Python to Fortran
!!!
program fizzbuzz
    implicit none

    character(len=8) :: fizz = ""
    integer :: limit, i
    logical :: trigger = .false.
    
    limit = 100
    i = 1

    do while (i < limit +1)

        !!! If i is divisible by 3, append "Fizz" to fizz
        if (mod(i,3) == 0) then
            fizz = "Fizz"
            trigger = .true.
        else
            !!! Make sure fizz is empty if i is not divisible by 3
            fizz = ""
        end if

        !!! If i is divisible by 5, append "Buzz" to fizz
        if (mod(i,5) == 0) then
            fizz = trim(fizz) // "Buzz"
            trigger = .true.
        end if

        !!! If neither case is true assign i to fizz
        if (trigger .eqv. .false.) then
            ! write(fizz, '(I0)') i
            fizz = int2str(i)
        end if
        
        !!! Print the value of fizz
        print *, fizz
        
        !!! Reset trigger and fizz
        trigger = .false.
        fizz = ""

        !!! Increment i
        i = i + 1

    end do

    contains

    ! Convert an integer to string
    function int2str(num) result(str)
        implicit none
    
        integer, intent(in) :: num
        character(len=8) :: str
    
        write(str, '(I8)') num
        str = trim(adjustl(str))
    end function int2str

end program fizzbuzz

