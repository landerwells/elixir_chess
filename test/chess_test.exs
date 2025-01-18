defmodule ChessTest do
  use ExUnit.Case
  doctest Chess

  test "expand_row" do
    assert String.length(Chess.expand_row("4P3")) == 8
    assert Chess.expand_row("4P3") == "    P   "
  end

  test "move" do
    Chess.new_game()
    updated_board = Chess.move(%Chess.Game{}, "e2-e4")

    expected_board =
      Chess.parse_fen("rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq e3 0 1")

    assert updated_board == expected_board
  end
end
