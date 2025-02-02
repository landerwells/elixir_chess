defmodule Chess.Move.Validation do
  def validate_move(piece) do
    case piece do
      "." -> {:error, "There is no piece on this square"}
      _ -> :ok
    end
  end
end
