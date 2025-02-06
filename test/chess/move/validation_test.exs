defmodule Chess.Move.ValidationTest do
  use ExUnit.Case

  alias Chess.Move.Validation

  test "no piece" do
    assert Validation.validate_move(%Chess.Game{}, ".") == {:error, "There is no piece on this square"}
  end

  test "not your piece" do
    assert Validation.validate_move(%Chess.Game{}, "r") == {:error, "You cannot move your opponent's piece"}
  end

  # - Not a legal move with this piece
  # - Currently in check
  # - Random garbage gets put in the move thing
  # - Any other non legal moves?
  # Invalid move format<LeftMouse>k
end
