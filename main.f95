! A fortran95 program for G95
! By WQY
program main

  real(4):: a(10), b(10)
  data a/0,-1,2,-3,4,-5,6,-7,8,-9/
  data b/0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/

  print *, 'a', a
  print *, 'b', b

    where(a>0)
    a=10*a
    elsewhere
    a=1000000
    end where



    where(b==0)
    b=1000000
    elsewhere(b==0.1)
    b=-1
    elsewhere(b<0.3)
    b=b*1000
    elsewhere(b==0.3)
    b=floor(b,4)
    elsewhere(b==0.4)
    b=mod(b,0.3)
    elsewhere(b==0.5)
    b=sign(b,-1.0)
    elsewhere(b>0.5)
    b=ceiling(b,4)
    end where

  print *
  print *
  print *
  print *, 'a', a
  print *, 'b', b

end program



!без условия where/elsewhere выводит массив a
!убираем комментарии - положительные числа увеличиваются в 10 раз,
!каждый неположительный элемент массива заменяется миллионом
