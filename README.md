# Paasaa

[![Actions Status](https://github.com/minibikini/paasaa/workflows/CI/badge.svg)](https://github.com/minibikini/paasaa/actions)
[![Coverage Status](https://coveralls.io/repos/github/minibikini/paasaa/badge.svg?branch=master)](https://coveralls.io/github/minibikini/paasaa?branch=master)
[![Hex.pm](https://img.shields.io/hexpm/v/paasaa.svg?maxAge=2592000)](https://hex.pm/packages/paasaa)
[![Hex.pm](https://img.shields.io/hexpm/l/paasaa.svg?maxAge=2592000)](https://hex.pm/packages/paasaa)

Natural language detection for Elixir

[API Documentation] | [Hex Package]

## Installation

Add `paasaa` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:paasaa, "~> 0.6.0"}]
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
  {"sco", 0.8675529295913343},
  {"nob", 0.6065977351058591},
  {"swe", 0.5923190546528804},
  ...
]
```

## Benchmark

```shell
mix bench
```

## Update Language Data

```shell
mix run script/generate_language_data.exs
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
