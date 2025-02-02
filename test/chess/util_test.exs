defmodule Chess.UtilTest do
  use ExUnit.Case

  test "fen_board_to_grid" do
    expected_board = [
      ["r", "n", "b", "q", "k", "b", "n", "r"],
      ["p", "p", "p", "p", "p", "p", "p", "p"],
      [".", ".", ".", ".", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", ".", ".", "."],
      ["P", "P", "P", "P", "P", "P", "P", "P"],
      ["R", "N", "B", "Q", "K", "B", "N", "R"]
    ]

    assert Chess.Util.fen_board_to_grid() == expected_board
  end

  @tag :skip
  test "pretty printing" do
    expected_board = """
    -   +---+---+---+---+---+---+---+---+
    8   | r | n | b | q | k | b | n | r |
    -   +---+---+---+---+---+---+---+---+
    7   | p | p | p | p | p | p | p | p |
    -   +---+---+---+---+---+---+---+---+
    6   |   |   |   |   |   |   |   |   |
    -   +---+---+---+---+---+---+---+---+
    5   |   |   |   |   |   |   |   |   |
    -   +---+---+---+---+---+---+---+---+
    4   |   |   |   |   |   |   |   |   |
    -   +---+---+---+---+---+---+---+---+
    3   |   |   |   |   |   |   |   |   |
    -   +---+---+---+---+---+---+---+---+
    2   | P | P | P | P | P | P | P | P |
    -   +---+---+---+---+---+---+---+---+
    1   | R | N | B | Q | K | B | N | R |
    -   +---+---+---+---+---+---+---+---+

        | a | b | c | d | e | f | g | h |
    """

    assert Chess.Util.pretty_print_board(Chess.Util.fen_board_to_grid()) == expected_board
  end

  test "row to fen" do
    assert Chess.Util.row_to_fen("....p...") == "4p3"
  end

  test "grid to fen board" do
    grid = [
      ["r", "n", "b", "q", "k", "b", "n", "r"],
      ["p", "p", "p", "p", "p", "p", "p", "p"],
      [".", ".", ".", ".", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", ".", ".", "."],
      ["P", "P", "P", "P", "P", "P", "P", "P"],
      ["R", "N", "B", "Q", "K", "B", "N", "R"]
    ]

    expected_fen = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR"

    assert Chess.Util.grid_to_fen_board(grid) == expected_fen
  end
end
