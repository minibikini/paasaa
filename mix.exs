defmodule Paasaa.Mixfile do
  use Mix.Project

  def project do
    [
      app: :paasaa,
      version: "0.3.1",
      elixir: "~> 1.7",
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
    [applications: [:logger]]
  end

  defp deps do
    [
      {:exjsx, "~> 4.0"},
      {:ex_doc, "~> 0.12", only: :dev},
      {:mix_test_watch, "~> 0.2", only: :dev},
      {:benchfella, "~> 0.3.0", only: :dev},
      {:credo, "~> 1.0.5", only: [:dev, :test]},
      {:excoveralls, "~> 0.5", only: :test},
      {:dialyxir, "~> 0.5.0", only: [:dev]}
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
      files: ["lib/paasaa.ex", "lib/paasaa/data.ex", "priv", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Egor Kislitsyn"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/minibikini/paasaa"}
    ]
  end
end
