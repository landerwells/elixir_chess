defmodule Chess do
  @moduledoc """
  Documentation for `Chess`.
  """

  # Default FEN for a new game
  def new_game(), do: new_game("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1")

  def new_game(starting_string) do
    IO.puts(starting_string)
  end

  def move(%Chess.Game{} = game, move) do
    IO.puts move
  end

  # Might want a validate fen function as well


  # This will return a new chess game state?
  def parse_fen(), do: %Chess.Game{}

  def parse_fen(fen) do
    [board, to_move, castle, en_passant, halfmove, fullmove] = String.split(fen)
    
    %Chess.Game{
      board: board,
      to_move: to_move,
      castle: castle,
      en_passant: en_passant,
      halfmove: halfmove,
      fullmove: fullmove
    }
  end

  def print_board(game_state) do
    game_state.board
    |> String.split("/")
    |> Enum.map(fn n -> IO.puts(expand_row(n)) end)
  end

  def expand_row(row) do
    row
      |> String.graphemes()
      |> Enum.map(fn x -> expand_spaces(x) end)
      |> Enum.join()
  end

  def expand_spaces(char) do
    case char do
      "1" -> " "
      "2" -> "  "
      "3" -> "   "
      "4" -> "    "
      "5" -> "     "
      "6" -> "      "
      "7" -> "       "
      "8" -> "        "
      _ -> char
    end
  end
end
