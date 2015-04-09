defmodule Functions1Test do
  use ExUnit.Case

  test "list_concat concatenates two lists" do
    assert Functions1.list_concat([:a, :b], [:c, :d]) == [:a, :b, :c, :d]
  end
	
	test "sum sums 3 arguments" do
		assert Functions1.sum(1, 2, 3) == 6
	end
	
	test "pair_tuple_to_list converts 2-element tuple to list" do
		assert Functions1.pair_tuple_to_list({1234, 5678}) == [1234, 5678]
	end
end

defmodule Functions2Test do
	use ExUnit.Case
	
	test "if first two are zero, return FizzBuzz" do
		assert Functions2.fizzbuzz(0, 0, "whatever") == "FizzBuzz"
	end
	
  test "if only the first one is zero, return Fizz" do
		assert Functions2.fizzbuzz(0, 1, "whatever") == "Fizz"
	end
	
	test "if only the second one is zero, return Buzz" do
		assert Functions2.fizzbuzz(1, 0, "whatever") == "Buzz"
	end
	
  test "if first two are other than zero, return Buzz" do 
		assert Functions2.fizzbuzz(1, 1, "whatever") == "whatever"
	end
end

defmodule Functions3Test do
	use ExUnit.Case

	test "behaves like typical fizzbuzz" do
		assert Functions3.fizzbuzz(10) == "Buzz"
		assert Functions3.fizzbuzz(11) == 11
		assert Functions3.fizzbuzz(12) == "Fizz"
		assert Functions3.fizzbuzz(13) == 13
		assert Functions3.fizzbuzz(14) == 14
		assert Functions3.fizzbuzz(15) == "FizzBuzz"
		assert Functions3.fizzbuzz(16) == 16
	end
end

defmodule Functions4Test do
	use ExUnit.Case
	
	test "Basic prefix test" do
		mrs = Functions4.prefix("Mrs")
		assert mrs.("Smith") == "Mrs Smith"
	end
end

defmodule Functions5Test do
	use ExUnit.Case
	
	test "map example with short lamba notation" do
		assert Enum.map [1, 2, 3, 4], &(&1 + 2) == [3, 4, 5, 6]
	end
	
	# test "each example with short lambda notation" do
	# 	Enum.each [1, 2, 3, 4], &IO.inspect/1
	# end
end

defmodule ModulesAndFunctions1to3Test do
	use ExUnit.Case

	test "triple triples the value" do
		assert Times.triple(2) == 6
	end

	test "quadruples mutiplies the value by 4" do
		assert Times.quadruple(2) == 8
	end
end

defmodule ModulesAndFunctions4to5Test do
	use ExUnit.Case

	test "sum of 1 returns 1" do
		assert ModulesAndFunctions4to5.sum(1) == 1
	end
	
	test "sum of 10 returns sum of integers from 1 to 10" do
		assert ModulesAndFunctions4to5.sum(10) == 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10
	end
	
	test "gcd returns first argument when the second one is 0" do
		assert ModulesAndFunctions4to5.gcd(10, 0) == 10
	end
	
	test "gcd(15, 27) returns 3" do
		assert ModulesAndFunctions4to5.gcd(15, 27) == 3
	end
end

defmodule ChopTest do
	use ExUnit.Case

	test "when range is of size one and equals n, return n" do
		assert Chop.guess(273, 273..273) == 273
	end
	
	test "when range halved hits the guess n, return n" do
		assert Chop.guess(50, 1..100) == 50
	end
	
	test "example passes" do
		assert Chop.guess(273, 1..1000) == 273
	end
end

defmodule ListsAndRecursionTest do
	use ExUnit.Case
	alias ListsAndRecursion, as: L

	# part 0

	test "sum of empty list is zero" do
		assert L.sum([]) == 0
	end
	
	test "sum of non-empty list is head added to sum of tail" do
		assert L.sum([1, 2, 3, 4]) == 10
	end
	
	# part 1

	test "mapsum applies the function to each element of the list and then sums the result" do
		assert L.mapsum([], &(&1 * &1)) == 0
		assert L.mapsum([1, 2, 3], &(&1 * &1)) == 14
	end

	# part 2

	test "max returns maximum value or nil" do
		assert L.max([]) == nil
		assert L.max([1]) == 1
		assert L.max([1, 3, 2]) == 3
	end
	
	# part 3
	
	test "caesar cipher" do
		assert L.caesar('', 13) == ''
		assert L.caesar('ryvkve', 13) == 'elixir'
	end
	
	# part 4

	test "span" do
		assert L.span(5, 5) == [5]
		assert L.span(1, 10) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	end
end

defmodule MyOwnTest do
	use ExUnit.Case
	
	test "factorial produces a factorial indeed" do
		assert MyOwn.factorial(4) == 24
	end
end
