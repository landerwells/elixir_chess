defmodule Chess do
  @moduledoc """
  Documentation for `Chess`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Chess.hello()
      :world

  """
  def hello do
    :world
  end

  def new_game(), do: new_game("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1")

  def new_game(starting_string) do
    IO.puts(starting_string)
  end

  # Might want a validate fen function as well


  # This will return a new chess game state?
  def parse_fen(), do: %Chess_State{}

  def parse_fen(fen) do
    [board, to_move, castle, en_passant, halfmove, fullmove] = String.split(fen)
    
    %Chess_State{
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
    |> Enum.map(fn n -> IO.puts(n) end)
  end

  def expand_row(row) do
    row
      |> String.graphemes()
      |> Enum.map(expand_spaces(/1))
      |> Enum.join()
  end

  def expand_spaces(char) do
    if String.contains?("12345678", char) do
      
    end
  end
end
