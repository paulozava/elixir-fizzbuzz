defmodule Fizzbuzz do
  def fizzbuzz(collection) do
    Enum.map(collection, fn x ->
      cond do
        rem(x, 15) == 0 -> "FizzBuzz"
        rem(x, 3) == 0 -> "Fizz"
        rem(x, 5) == 0 -> "Buzz"
        true -> x
      end
    end)
  end

  def run(file_path) do
    File.read!(file_path)
    |> String.trim()
    |> String.split(", ")
    |> Enum.map(&String.to_integer/1)
    |> fizzbuzz()
  end
end
