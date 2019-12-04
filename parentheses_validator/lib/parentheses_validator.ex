defmodule ParenthesesValidator do
  def valid_parentheses(string) do
    string
    |> String.codepoints()
    |> valid_parentheses_p(0)
  end

  defp valid_parentheses_p([], num_open), do: num_open == 0
  defp valid_parentheses_p(_char_list, num_open) when num_open < 0, do: false
  defp valid_parentheses_p(char_list, num_open) do
    [head|tail] = char_list
    case head do
      "(" -> valid_parentheses_p(tail, num_open+1)
      ")" -> valid_parentheses_p(tail, num_open-1)
      _ -> valid_parentheses_p(tail, num_open)
    end
  end
end
