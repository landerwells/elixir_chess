defmodule ChessTest do
  use ExUnit.Case
  doctest Chess

  test "expand_row" do
    assert String.length(Chess.expand_row("4P3")) == 8
    assert Chess.expand_row("4P3") == "    P   "
  end
end


