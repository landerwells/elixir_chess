defmodule Chess.Move do
  def move(%Chess.Game{} = game, move) do
    # Could convert fen to grid
    grid = Chess.Util.fen_board_to_grid(game.board)

    # parse the move

    # e, 2, ,, e, 4
    [from_file, from_rank, _, to_file, to_rank] =
      move
      |> String.split()
      |> Enum.map(&rank_file_to_coordinate/1)

    # get the two pieces,
    # piece1 =
    #   grid
    #   |> Enum.at()

    # and then transfer back to fen
    # updated_board = move_piece

    # new_board = %Chess.Game{
    #   board: update_board(game, parse_move(move)),
    #   to_move: toggle(game.to_move),
    #   castle: game.castle,
    #   en_passant: game.en_passant,
    #   halfmove: game.halfmove,
    #   fullmove: game.fullmove
    # }
  end

  def rank_file_to_coordinate(char) do
    map = %{
      "a" => 0, "b" => 1, "c" => 2, "d" => 3, 
      "e" => 4, "f" => 5, "g" => 6, "h" => 7, 
      "1" => 0, "2" => 1, "3" => 2, "4" => 3, 
      "5" => 4, "6" => 5, "7" => 6, "8" => 7
    }
    Map.get(map, char)
  end

  def parse_move() do
  end

  def toggle("w"), do: "b"
  def toggle("b"), do: "w"
end
