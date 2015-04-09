defmodule Functions1 do
	def list_concat(a, b), do: a ++ b 

	def sum(a, b, c), do: a + b + c 

	def pair_tuple_to_list({a, b}), do: [a, b] 
end

defmodule Functions2 do
	def fizzbuzz(0, 0, _), do: "FizzBuzz"
	def fizzbuzz(0, _, _), do: "Fizz"
	def fizzbuzz(_, 0, _), do: "Buzz"
	def fizzbuzz(_, _, x), do: x
end

defmodule Functions3 do
	def fizzbuzz(n), do: Functions2.fizzbuzz(rem(n, 3), rem(n, 5), n)
end

defmodule Functions4 do
	def prefix(pfx), do: fn text -> "#{pfx} #{text}" end
end

defmodule Times do
	def double(n), do: n * 2
	def triple(n), do: n * 3
	def quadruple(n), do: double(n) * 2
end

defmodule ModulesAndFunctions4to5 do
	def sum(0), do: 0
	def sum(1), do: 1
  def sum(n), do: n + sum(n - 1)
	
	def gcd(x, 0), do: x
	def gcd(x, y), do: gcd(y, rem(x, y))	
end

defmodule Chop do
	def guess(n, a..b), do: guess_with(n, a + div(b - a, 2), a..b)

	defp guess_with(n, g, _) when g == n do 
		#IO.puts "Is it #{g}"
		n
	end
	defp guess_with(n, g, a.._b) when g > n do
		#IO.puts "Is it #{g}"
		guess(n, a..(g - 1))
	end
	defp guess_with(n, g, _a..b) when g < n do
		#IO.puts "Is it #{g}"
		guess(n, (g + 1)..b)
	end
end

defmodule ListsAndRecursion do
	def sum([]), do: 0
	def sum([head | tail]), do: head + sum(tail)
	
	def mapsum(list, func), do: _mapsum(list, func, 0)
		
	defp _mapsum([], _func, acc), do: acc
	defp _mapsum([head | tail], func, acc) do
		_mapsum(tail, func, acc + func.(head))
	end
	
	def max(list), do: _max(list, nil)
		
	defp _max([], max), do: max
	defp _max([head | tail], max) when not is_number(max) or head > max do
		_max(tail, head)
	end
	defp _max([_head | tail], max) do
		_max(tail, max)
	end
	
	def caesar([], _rot), do: []
	def caesar([head | tail], rot) do
		[_rotate(head, rot) | caesar(tail, rot)]
	end

	defp _rotate(n, rot) when n + rot > ?z, do: ?a + rem(n + rot, ?z + 1)
	defp _rotate(n, rot) when n + rot <= ?z, do: rem(n + rot, ?z + 1)
	
	# part 4

	def span(from, to) when to >= from, do: _span(from, to, [])

	defp _span(to, to, list), do: list ++ [to]
	defp _span(from, to, list), do: _span(from + 1, to, list ++ [from])
end

defmodule MyOwn do
	def factorial(0), do: 1
	def factorial(n) when n > 0, do: n * factorial(n - 1)
end

