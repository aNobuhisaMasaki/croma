defmodule Croma.Mixfile do
  use Mix.Project

  @github_url "https://github.com/skirino/croma"

  def project() do
    [
      app:               :croma,
      version:           "0.10.1",
      elixir:            "~> 1.6",
      build_embedded:    Mix.env() == :prod,
      start_permanent:   Mix.env() == :prod,
      deps:              deps(),
      description:       "Elixir macro utilities to make type-based programming easier",
      package:           package(),
      source_url:        @github_url,
      homepage_url:      @github_url,
      test_coverage:     [tool: ExCoveralls],
      preferred_cli_env: [coveralls: :test, "coveralls.detail": :test, "coveralls.post": :test, "coveralls.html": :test],
    ]
  end

  def application() do
    []
  end

  defp deps() do
    [
      {:dialyxir   , "~> 0.5"   , [only: :dev ]},
      {:earmark    , "~> 1.2"   , [only: :dev ]},
      {:ex_doc     , "~> 0.18.0", [only: :dev ]},
      {:stream_data, "~> 0.4"   , [only: :test]},
      {:excoveralls, "~> 0.10"  , [only: :test]},
    ]
  end

  defp package() do
    [
      files:       ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Shunsuke Kirino"],
      licenses:    ["MIT"],
      links:       %{"GitHub repository" => @github_url},
    ]
  end
end
