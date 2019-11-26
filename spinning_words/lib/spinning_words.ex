defmodule SpinningWords do
  @moduledoc """
  Documentation for SpinningWords.
  """

  @doc """
  Hello world.

  ## Examples

      iex> SpinningWords.hello()
      :world

  """
  def spin_words(message) when is_binary(message) do
    message
    |>String.split
    |>spin_words_p([])
  end
  def spin_words(_message), do: ""

  defp spin_words_p(words, results) when length(words) == 0, do: assemble(results)
  defp spin_words_p(words, results) do
    [head|tail] = words
    word = if String.length(head) > 4 do
      String.reverse(head)
    else
      head
    end
    spin_words_p(tail, [word|results])
  end

  defp assemble(word_list) do
    word_list
    |>Enum.reverse
    |>Enum.join(" ")
  end
end
