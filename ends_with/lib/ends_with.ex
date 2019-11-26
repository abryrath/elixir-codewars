defmodule EndsWith do
  @moduledoc """
  Documentation for EndsWith.
  """

  def solution(str, ending) when is_binary(str) and is_binary(ending) do
    String.ends_with?(str, ending)
  end
  def solution(_str, _ending), do: false
end
