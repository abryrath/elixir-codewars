defmodule PrimeFactors do
  @moduledoc """
  Documentation for PrimeFactors.
  """

  @doc """
   Hello world.

  """
  def prime_factors(n) when is_integer(n) and n > 1 do
    factor(n, [], 2)
    |> Enum.sort()
    |> format
  end

  @doc """
  Get a list of all prime factors, e.g. 54 -> [3, 3, 3, 2]
  """
  @spec factor(pos_integer(), list(), pos_integer()) :: list()
  defp factor(n, factors, current) when n == 1, do: factors

  defp factor(n, factors, current) do
    remainder = rem(n, current)

    if remainder == 0 do
      factor(ceil(n / current), [current | factors], current)
    else
      factor(n, factors, current + 1)
    end
  end

  @doc "Format the prime factors into a human-readable string"
  @spec format(list()) :: binary()
  defp format(factors, out \\ "")
  defp format([], out), do: out

  defp format(factors, out) do
    [head|_] = factors
    count = factors
    |> Enum.filter(fn n -> n == head end)
    |> Enum.count

    rest = factors
    |> Enum.slice(count, Enum.count(factors) - count)

    if count > 1 do
      format(rest, "#{out}(#{head}**#{count})")
    else
      format(rest, "#{out}(#{head})")
    end
  end
end
