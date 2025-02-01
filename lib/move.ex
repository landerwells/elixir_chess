defmodule Chess.Move do
  def move(%Chess.Game{} = game, move) do
    # # Could convert fen to grid
    grid = Chess.Util.fen_board_to_grid(game.board)

    # e, 2, ,, e, 4
    [from_file, from_rank, _, to_file, to_rank] =
      move
      |> String.graphemes()
      |> Enum.map(&rank_file_to_coordinate/1)

    # Get the piece from the original position
    piece1 = Enum.at(Enum.at(grid, from_rank), from_file)

    # Remove the piece from its original position and update the new position
    updated_grid =
      grid
      # Remove piece
      |> List.replace_at(from_rank, List.replace_at(Enum.at(grid, from_rank), from_file, "."))
      # Move piece
      |> List.replace_at(to_rank, List.replace_at(Enum.at(grid, to_rank), to_file, piece1))

    # Convert back to FEN
    updated_fen = Chess.Util.grid_to_fen_board(updated_grid)

    %Chess.Game{
      board: updated_fen,
      to_move: toggle(game.to_move),
      castle: game.castle,
      en_passant: game.en_passant,
      halfmove: game.halfmove,
      fullmove: game.fullmove
    }
  end

  def rank_file_to_coordinate(char) do
    map = %{
      "a" => 0,
      "b" => 1,
      "c" => 2,
      "d" => 3,
      "e" => 4,
      "f" => 5,
      "g" => 6,
      "h" => 7,
      "1" => 7,
      "2" => 6,
      "3" => 5,
      "4" => 4,
      "5" => 3,
      "6" => 2,
      "7" => 1,
      "8" => 0
    }

    Map.get(map, char)
  end

  # def parse_move() do
  # end

  def toggle("w"), do: "b"
  def toggle("b"), do: "w"
end
