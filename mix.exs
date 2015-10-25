defmodule HelloEcto.Mixfile do
  use Mix.Project

  def project do
    [app: :hello_ecto,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :cowboy, :plug, :postgrex, :ecto],
     mod: {HelloEcto, []}]
  end

  defp deps do
    [
      {:postgrex, "~> 0.9.1"},
      {:ecto, "~> 1.0.6"},
      {:cowboy, "~> 1.0.3"},
      {:plug, "~> 1.0.2"},
      {:poison, "~> 1.5"},
    ]
  end
end
