# Paasaa

[![Actions Status](https://github.com/minibikini/paasaa/workflows/CI/badge.svg)](https://github.com/minibikini/paasaa/actions)
[![Coverage Status](https://coveralls.io/repos/github/minibikini/paasaa/badge.svg?branch=master)](https://coveralls.io/github/minibikini/paasaa?branch=master)
[![Hex.pm](https://img.shields.io/hexpm/v/paasaa.svg?maxAge=2592000)](https://hex.pm/packages/paasaa)
[![Hex.pm](https://img.shields.io/hexpm/l/paasaa.svg?maxAge=2592000)](https://hex.pm/packages/paasaa)

Paasaa is an Elixir library for robust natural language and script detection. It achieves this through statistical analysis of character n-grams and Unicode script properties, without relying on AI. It helps in tasks like text processing, natural language understanding, or internationalization by accurately identifying the writing system and human language of a given text.

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
iex> Paasaa.detect("Detect this!")
"eng"
```

Detect language and return a scored list of languages:

```elixir
iex> Paasaa.all("Detect this!")
[
  {"eng", 1.0},
  {"sco", 0.8230731943771207},
  {"nob", 0.6030053320407174},
  {"nno", 0.5525933107125545},
  ...
]
```

Detect a script:

```elixir
iex> Paasaa.detect_script("Detect this!")
{"Latin", 0.8333333333333334}
```

## Supported Languages

For a full list of supported languages, please see [LANGUAGES.md](LANGUAGES.md).

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

## Contributing

Contributions are welcome! Please feel free to open an issue or submit a pull request on [GitHub](https://github.com/minibikini/paasaa).

<!-- Definitions -->

[Api Documentation]: https://hexdocs.pm/paasaa/Paasaa.html
[Hex Package]: https://hex.pm/packages/paasaa
[Franc]: https://github.com/wooorm/franc/
[Titus Wormer]: http://wooorm.com/
[mit]: LICENSE
[Egor Kislitsyn]: https://github.com/minibikini
