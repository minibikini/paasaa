# Paasaa Project Context

## Project Overview
Paasaa is an Elixir library for natural language and script detection.
It uses statistical analysis of character n-grams and Unicode script properties.
It is **not** an AI-based detection tool itself, but a deterministic algorithm.
The project is a derivative work of [Franc](https://github.com/wooorm/franc/).

## Codebase Standards
- **Language**: Elixir (~> 1.18)
- **Style**: Follow standard Elixir idioms (pattern matching, piping, supervision trees).
- **Formatting**: Code must be formatted with `mix format`.
- **Linting**: The project uses `credo`. Ensure changes do not introduce Credo warnings.
- **Testing**: Uses `ExUnit` and `ExCoveralls`. Maintain high test coverage.

## Review Guidelines
When reviewing code for Paasaa:
1. **Performance**: This library might be used in hot paths. Pay attention to performance implications of string manipulation and large list operations.
2. **Readability**: Prefer clear, explicit variable names over terse ones.
3. **Safety**: Watch out for potential crashes (e.g., using `String.to_existing_atom` vs `String.to_atom`).
4. **Docs**: Ensure public functions have `@doc` attributes and examples.

## Specific Files
- `lib/paasaa.ex`: Main entry point.
- `lib/paasaa/data.ex`: generated data file (often large, be careful reviewing diffs here).
- `script/generate_language_data.exs`: Script to regenerate data. Modifications here require re-running the script.
