load 'difference-of-squares.ijs'


temppath=: < jpath '~temp/helper.txt'

before_all =: monad define  
  order=: i.0
  tasks=: i.0
)

after_all =: monad define
  (, LF ,~"1 ":order ,. tasks) 1!:2 temppath
)

test_square_of_sum_1 =: monad define
  order=:order , 1
  tasks=:tasks , 1
  assert 1 = square_of_sum 1
)

test_square_of_sum_5 =: monad define
  order=:order , 2
  tasks=:tasks , 1
  assert 225 = square_of_sum 5
)

test_square_of_sum_100 =: monad define
  order=:order , 3
  tasks=:tasks , 1
  assert 25502500 = square_of_sum 100
)

test_sum_of_square_5 =: monad define
  order=:order , 4
  tasks=:tasks , 2
  assert 55 = sum_of_square 5
)

test_sum_of_square_100 =: monad define
  order=:order , 5
  tasks=:tasks , 2
  assert 338350 = sum_of_square 100
)

test_difference_of_squares_0 =: monad define
  order=:order , 6
  tasks=:tasks , 3
  assert 0 = difference_of_squares 0
)

test_difference_of_squares_5 =: monad define
  order=:order , 7
  tasks=:tasks , 3
  assert 170 = difference_of_squares 5
)

test_difference_of_squares_100 =: monad define
  order=:order , 8
  tasks=:tasks , 3
  assert 25164150 = difference_of_squares 100
)
