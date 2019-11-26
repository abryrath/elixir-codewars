defmodule SpinningWordsTest do
  use ExUnit.Case
  # doctest SpinningWords

  test "Have fun!" do
    assert SpinningWords.spin_words("Have fun!") == "Have fun!"
  end

  test "Welcome is reversed" do
    assert SpinningWords.spin_words("Welcome") == "emocleW"
  end

  test "First word is not reversed" do
    assert SpinningWords.spin_words("Hey fellow warriors") == "Hey wollef sroirraw"
  end
end
