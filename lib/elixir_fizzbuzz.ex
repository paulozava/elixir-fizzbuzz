defmodule Fizzbuzz do
  def fizzbuzz(collection) do
    Enum.map(collection, fn x ->
      cond do
        rem(x, 3) == 0 && rem(x, 5) != 0 -> "Fizz"
        rem(x, 3) != 0 && rem(x, 5) == 0 -> "Buzz"
        rem(x, 3) == 0 && rem(x, 5) == 0 -> "FizzBuzz"
        rem(x, 3) != 0 && rem(x, 5) != 0 -> x
      end
    end)
  end

  def run() do
    numbers = File.read!("numbers.txt")
    numbers = String.trim(numbers) |> String.split(", ") |> Enum.map(fn x -> String.to_integer(x) end)
    fizzbuzz(numbers)
  end
end
