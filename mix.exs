defmodule Paasaa.Mixfile do
  use Mix.Project

  def project do
    [
      app: :paasaa,
      version: "0.2.0",
      elixir: "~> 1.3",
      description: description(),
      package: package(),
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: ["coveralls": :test, "coveralls.detail": :test, "coveralls.post": :test, "coveralls.html": :test]
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:exjsx, "~> 3.0",   only: [:dev, :test]},
      {:ex_doc, "~> 0.12", only: :dev},
      {:mix_test_watch, "~> 0.2", only: :dev},
      {:benchfella, "~> 0.3.0", only: :dev},
      {:credo, "~> 0.4", only: [:dev, :test]},
      {:excoveralls, "~> 0.5", only: :test},
      {:dialyxir, "~> 0.3.5", only: [:dev]}
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
      files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
      maintainers: ["Egor Kislitsyn"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/minibikini/paasaa"}
    ]
  end

end
