defmodule Chess.Move.Validation do
  def validate_move(game, piece) do
    cond do
      piece == "." ->
        {:error, "There is no piece on this square"}
      game.to_move == "w" && piece != String.upcase(piece) ->
        {:error, "You cannot move your opponent's piece"}
      true ->
        :ok
    end
  end
end
