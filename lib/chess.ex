defmodule Chess do
  @moduledoc """
  Documentation for `Chess`.
  """

  def new_game(), do: %Chess.Game{}

  def new_game(fen) do
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

  def move(%Chess.Game{} = game, move) do
    {:ok, game} = Chess.Move.move(game, move)
    # This line is technically not necessary but definitely helps when moving via mix
    IO.puts(Chess.Util.pretty_print_board(Chess.Util.fen_board_to_grid(game.board)))
    game
  end

  def board(%Chess.Game{} = game) do
    grid = Chess.Util.fen_board_to_grid(game.board)
    Chess.Util.pretty_print_board(grid)
  end

  # Given a coordinate, this will return a list of potential legal moves
  # def moves(%Chess.Game{} = game, coordinate) do
  # end
end
