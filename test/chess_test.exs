defmodule ChessTest do
  use ExUnit.Case
  doctest Chess

  @tag :skip
  test "move" do
    Chess.new_game()
    updated_board = Chess.move(%Chess.Game{}, "e2-e4")

    expected_board =
      Chess.parse_fen("rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq e3 0 1")

    assert updated_board == expected_board
  end

  # test "parse move" do
  #   move = "e2-e4"
  #
  #   assert Chess.parse_move(move) ==
  # end
end
