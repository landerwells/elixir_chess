defmodule Chess_State do
  # These are the starting values of a chess game
  # rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1
  defstruct board: "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR",
    to_move: "w",
    castle: "KQkq",
    en_passant: "-",
    halfmove: "0",
    fullmove: "1"
end
