defmodule FormTheMinimum do
  @type numbers() :: List.t()

  @spec minValue(numbers()) :: integer()
  def minValue(numbers) do
    numbers
    |> strip_duplicates
    |> sort
    |> Enum.join("")
    |> String.to_integer()
  end

  @doc """
  Remove duplicates from the input by using a MapSet
  """
  @spec strip_duplicates(numbers()) :: map()
  defp strip_duplicates(numbers) do
    MapSet.new(numbers)
  end

  @doc """
  Sort the numbers in ascending order
  """
  @spec sort(map()) :: map()
  defp sort(map) do
    Enum.sort(map, fn a, b -> a < b end)
  end
end
