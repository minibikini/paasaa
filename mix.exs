defmodule Paasaa.Mixfile do
  use Mix.Project

  def project do
    [
      app: :paasaa,
      version: "1.0.0",
      elixir: "~> 1.8",
      description: description(),
      package: package(),
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      # Docs
      name: "Paasaa",
      source_url: "https://github.com/minibikini/paasaa",
      homepage_url: "https://github.com/minibikini/paasaa",
      docs: [
        # The main page in the docs
        main: "Paasaa",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [applications: []]
  end

  defp deps do
    [
      {:jason, "~> 1.1"},
      {:ex_doc, "~> 0.12", only: :dev},
      {:benchfella, "~> 0.3.0", only: :dev},
      {:excoveralls, "~> 0.11", only: :test},
      {:dialyxir, "~> 1.0.0-rc", only: :dev}
    ]
  end

  defp description do
    """
    Natural language detection in pure Elixir with built-in support for 187 languages.
    """
  end

  defp package do
    [
      name: :paasaa,
      files: ["lib", "priv", "mix.exs", ".formatter.exs", "README*", "LICENSE*"],
      maintainers: ["Egor Kislitsyn"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/minibikini/paasaa"}
    ]
  end
end
