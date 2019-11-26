defmodule PersistentBugger do
  def persistence(n) when is_integer(n) do
    persp(n, 0)
  end

  defp persp(n, i) when n < 10, do: i

  defp persp(n, i) do
    "#{n}"
    |>String.codepoints
    |>Enum.map(fn j -> String.to_integer(j) end)
    |>Enum.reduce(1, fn k, acc -> k*acc end)
    |>persp(i+1)
  end
end
