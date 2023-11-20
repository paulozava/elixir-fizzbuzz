defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "run" do
    assert Fizzbuzz.run() == [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14,
    "FizzBuzz", 16, 17, "Fizz", 19, "Buzz", "Fizz", 22, 23, "Fizz", "Buzz", 26,
    "Fizz", 28, 29, "FizzBuzz", 31, 32, "Fizz", 34, "Buzz"]
  end

  test "fizzbuzz" do
    assert Fizzbuzz.fizzbuzz([1,2,3]) == [1,2,"Fizz"]
  end
end
