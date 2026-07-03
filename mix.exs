defmodule Paasaa.Mixfile do
  use Mix.Project

  def project do
    [
      app: :paasaa,
      version: "1.0.0",
      elixir: "~> 1.18",
      elixirc_paths: elixirc_paths(Mix.env()),
      description: description(),
      package: package(),
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      # Docs
      name: "Paasaa",
      source_url: "https://github.com/minibikini/paasaa",
      homepage_url: "https://github.com/minibikini/paasaa",
      docs: [
        main: "readme",
        extras: ["README.md", "LANGUAGES.md"]
      ],
      dialyzer: [plt_add_apps: [:ex_unit]],
      aliases: aliases()
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  def cli do
    [
      preferred_envs: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test,
        ci: :test
      ]
    ]
  end

  defp deps do
    [
      {:ex_slop, "~> 0.4", only: [:dev, :test], runtime: false},
      {:reach, "~> 2.0", only: [:dev, :test], runtime: false},
      {:ex_dna, "~> 1.0", only: [:dev, :test], runtime: false},
      {:vibe_kit, "~> 0.1"},
      {:igniter, "~> 0.6", only: [:dev, :test]},
      {:ex_doc, "~> 0.28", only: :dev},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:benchee, "~> 1.0", only: [:dev, :test]},
      {:benchee_markdown, "~> 0.2", only: [:dev, :test]},
      {:excoveralls, "~> 0.18.3", only: :test},
      {:jsx, "~> 3.1.0", only: :dev},
      {:req, "~> 0.5.15", only: [:dev, :test]},
      {:dialyxir, "~> 1.0", only: [:dev, :test], runtime: false},
      {:iso_lang, "~> 0.4.0", only: [:dev], runtime: false}
    ]
  end

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

  defp aliases() do
    [
      ci: [
        "format",
        "compile --warnings-as-errors",
        "format --check-formatted",
        "test",
        "credo --strict",
        "dialyzer",
        "ex_dna --max-clones 0",
        "reach.check --arch --smells"
      ]
    ]
  end
end
