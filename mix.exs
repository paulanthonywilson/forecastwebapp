defmodule Forecastwebapp.Mixfile do
  use Mix.Project

  def project do
    [ app: :forecastwebapp,
      version: "0.0.1",
      build_per_environment: true,
      dynamos: [Forecastwebapp.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo, :httpotion],
      mod: { Forecastwebapp, [] } ]
  end

  defp deps do
    [
      { :cowboy, github: "extend/cowboy" },
      { :dynamo, "~> 0.1.0-dev", github: "elixir-lang/dynamo" },
      # { :jsonex, github: "paulanthonywilson/jsonex"},
      { :forecast, github: "paulanthonywilson/forecast"},
      ]
  end
end
