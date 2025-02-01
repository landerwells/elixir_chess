defmodule Chess.Util do
  def fen_board_to_grid() do
    board = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR"
    fen_board_to_grid(board)
  end

  def fen_board_to_grid(fen_board) do
    fen_board
    |> String.replace(~r/\d/, fn digit -> String.duplicate(".", String.to_integer(digit)) end)
    |> String.split("/")
    |> Enum.map(&String.graphemes/1)
  end

  # def grid_to_fen_board() do
  #   grid = [
  #     ["r", "n", "b", "q", "k", "b", "n", "r"],
  #     ["p", "p", "p", "p", "p", "p", "p", "p"],
  #     [" ", " ", " ", " ", " ", " ", " ", " "],
  #     [" ", " ", " ", " ", " ", " ", " ", " "],
  #     [" ", " ", " ", " ", " ", " ", " ", " "],
  #     [" ", " ", " ", " ", " ", " ", " ", " "],
  #     ["P", "P", "P", "P", "P", "P", "P", "P"],
  #     ["R", "N", "B", "Q", "K", "B", "N", "R"]
  #   ]
  #
  #   grid_to_fen_board(grid)
  # end

  def grid_to_fen_board(grid) do
    grid
    |> Enum.map(fn row ->
      row
      # Convert list of strings to a single string
      |> Enum.join("")
      # Convert the row to FEN notation
      |> row_to_fen()
    end)
    |> Enum.join("/")
  end

  def row_to_fen(row) do
    row
    # Convert string to list of graphemes
    |> String.graphemes()
    # Chunk spaces separately
    |> Enum.chunk_by(&(&1 == "."))
    # Convert chunks to FEN notation
    |> Enum.map(&chunk_to_fen/1)
    |> Enum.join()
  end

  defp chunk_to_fen(chunk) do
    if Enum.all?(chunk, &(&1 == ".")) do
      # Replace spaces with their count
      Integer.to_string(length(chunk))
    else
      # Leave non-space characters as-is
      Enum.join(chunk)
    end
  end

  def pretty_print_board(grid) do
    dividing_row = "+---+---+---+---+---+---+---+---+"

    grid
    |> Enum.map(fn row ->
      row
      # Format each cell with padding
      |> Enum.map(fn cell -> " #{cell} " end)
      |> Enum.join("|")
    end)
    |> Enum.map(fn row -> "#{dividing_row}\n|#{row}|" end)
    |> Enum.join("\n")
    |> Kernel.<>("\n#{dividing_row}\n")
  end
end
