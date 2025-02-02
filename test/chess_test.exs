defmodule ChessTest do
  use ExUnit.Case
  doctest Chess

  @tag :skip
  test "move" do
    Chess.new_game()
    updated_board = Chess.move(%Chess.Game{}, "e2-e4")

    expected_board =
      Chess.new_game("rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq e3 0 1")

    assert updated_board == expected_board
  end

  test "new_game" do
    expected_game =
      %Chess.Game{
        board: "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR",
        to_move: "b",
        castle: "KQkq",
        en_passant: "e3",
        halfmove: "0",
        fullmove: "1"
      }

    assert Chess.new_game("rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq e3 0 1") ==
             expected_game
  end

  # Here I can test a full game with a scholars mate.
end
