defmodule Chess.Move.ValidationTest do
  use ExUnit.Case

  alias Chess.Move.Validation

  test "no piece" do
    assert Validation.validate_move(".") == {:error, "There is no piece on this square"}
  end

  # Need to write tests in here for 
  # - No piece at current location
  # - Not your piece
  # - Not a legal move with this piece
  # - Currently in check
  # - Random garbage gets put in the move thing
  # - Any other non legal moves?
end
