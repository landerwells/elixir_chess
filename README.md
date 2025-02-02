# Chess

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `chess` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:chess, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/chess>.


Current Goals

- Get a working move system with piece capturing and nothing else
- Do not worry about getting a working system down for everything 


Want to interface entirely through Chess.Game


Maybe I should just keep track of the chess game without the fen board, and then
I could just output to fen notation.


I would also like exporting of FEN to a .fen file.
I think this would be a neat feature.

The first step of the pipeline that I should set up should be the game's start

The player with either start a new game, or enter a FEN from any game position

This will load the game, and then the player can play moves based on it.

All the moves and validation must be done

And the game will tell you when white or black has won


Need to define a chess api for writing a frontend. Thi
