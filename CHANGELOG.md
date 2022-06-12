# Changelog

## [Unreleased]

## 0.5.1 - 2019-07-07

### Fixed

- White and black lists now works for scripts too.

### Changed

- Update language data
- Update dependencies

## 0.5.0 - 2019-10-31

### Added

- A script to update language data

### Changed

- Update language data

## 0.6.0 - 2022-06-10

### Added

- Adds parsing of the `data.js` file to `generate_language_data.exs` script.

### Changed

- Updates `languages_url` target in `generate_language_data.exs` script so it downloads `data.js` (the old `data.json` file was removed in <https://github.com/wooorm/franc/commit/556d2a7ba3375cb04e7f6a94b4f5b540b55e9488>)
- Refactors script to use `:jsx.decode()` to decode the JSON instead of `Jason` because `Jason` is not a direct dependency of `paasaa`.
- Updates `languages.ex` and `scripts.ex` to reflect latest changes in <https://github.com/wooorm/franc/> package per the updated `data.js` file.
- Manually updates `fixtures.ex` to include the latest fixture data.
- Updates all hex dependencies to latest.
- Updates doctests to reflect statistical changes due to language updates.
- Updates tests to utilize modified fixture structure.
- Updates tests to assert on all available languages/fixtures for minimum 98% certainty (instead of limiting the test coverage to the first 10 languages)
