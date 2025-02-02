defmodule Chess.MoveTest do
  use ExUnit.Case

  test "rank_file_to_coordinate" do
    assert Chess.Move.rank_file_to_coordinate("a") == 0
  end

  test "move" do
    game = Chess.new_game()

    updated_board = Chess.Move.move(game, "e2-e4")

    expected_board =
      {:ok,
       %Chess.Game{
         board: "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR",
         to_move: "b"
       }}

    assert updated_board == expected_board
  end
end
