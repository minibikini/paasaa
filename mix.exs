defmodule Paasaa.Mixfile do
  use Mix.Project

  def project do
    [
      app: :paasaa,
      version: "0.6.0",
      elixir: "~> 1.10",
      description: description(),
      package: package(),
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env()),
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
    [applications: [:logger]]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.28", only: :dev},
      {:mix_test_watch, "~> 1.1.0", only: :dev},
      {:benchfella, "~> 0.3.0", only: :dev},
      {:credo, "~> 1.7.0", only: [:dev, :test]},
      {:excoveralls, "~> 0.16.0", only: :test},
      {:jsx, "~> 3.1.0", only: :dev},
      {:tesla, "~> 1.8.0", only: :dev},
      {:dialyxir, "~> 1.3.0", only: [:dev]}
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(:dev), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp description do
    """
    Natural language detection
    """
  end

  defp package do
    [
      name: :paasaa,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Egor Kislitsyn"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/minibikini/paasaa"}
    ]
  end
end
