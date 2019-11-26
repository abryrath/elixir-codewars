import SumOfSeries, only: [sum: 1]
defmodule SumOfSeriesTest do
  use ExUnit.Case
  doctest SumOfSeries

  test "series sum" do
    assert sum(0) == "0.00"
    assert sum(1) == "1.00"
    assert sum(2) == "1.25"
    assert sum(3) == "1.39"
    assert sum(4) == "1.49"
    assert sum(5) == "1.57"
  end
end
