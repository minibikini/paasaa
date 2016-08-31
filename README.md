# Paasaa

Language detection for Elixir

[Api Documentation] | [Hex Package]

## Installation

Add `paasaa` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:paasaa, "~> 0.1.0"}]
end
```

After you are done, run `mix deps.get` in your shell to fetch and compile **Paasaa**.

## Usage

Detect a language:

```elixir
iex> Paasaa.detect "Detect this!"
"eng"
```

Detect language and return a scored list of languages:

```elixir
iex> Paasaa.all("Detect this!")
[
  {"eng", 1.0},
  {"sco", 0.8668304668304668},
  {"nob", 0.6054054054054054},
  {"swe", 0.5921375921375922},
  ...
]
```

## Derivation    

**Paasaa** is a derivative work from [Franc][] (JavaScript, MIT) by [Titus Wormer].

## License

[MIT] © [Egor Kislitsyn]

<!-- Definitions -->

[Api Documentation]: https://hexdocs.pm/paasaa/Paasaa.html
[Hex Package]: https://hex.pm/packages/paasaa
[Franc]: https://github.com/wooorm/franc/
[Titus Wormer]: http://wooorm.com/
[mit]: LICENSE
[Egor Kislitsyn]: https://github.com/minibikini
