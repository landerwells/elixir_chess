defmodule ChessMoveTest do
  use ExUnit.Case

  test "rank_file_to_coordinate" do
    assert Chess.Move.rank_file_to_coordinate("a") == 0
  end
end
