defmodule SumOfSeries do
  @moduledoc """
  Documentation for SumOfSeries.
  """

  @doc """
  Hello world.

  ## Examples

      iex> SumOfSeries.sum(0)
      "0.00"

  """
  def sum(0), do: "0.00"
  def sum(n), do: sump(n, 0.00)

  defp sump(0, acc), do: format(acc)
  defp sump(n, acc) do
    d = denom(n)
    x = 1/d
    sump(n-1, acc+x)
  end

  defp format(x) when is_float(x), do: x |> Float.round(2) |> :erlang.float_to_binary(decimals: 2)
  defp format(x) when is_binary(x), do: x

  defp denom(n) do
    1 + (3*(n-1))
  end
end
