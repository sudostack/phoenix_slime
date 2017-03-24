defmodule PhoenixSlime.Mixfile do
  use Mix.Project

  @version "0.8.0"

  def project do
    [
      app: :phoenix_slime,
      deps: deps(),
      description: """
      Phoenix Template Engine for Slim-like templates
      """,
      elixir: "~> 1.4",
      package: package(),
      version: @version]
  end

  def application do
    [applications: [:phoenix, :slime]]
  end

  def deps do
    [{:phoenix, "~> 1.2", allow_pre: false},
     {:phoenix_html, "~> 2.6"},
     {:cowboy, "~> 1.0"},
     {:slime, "~> 0.16"},
     {:ex_doc, ">= 0.0.0", only: :dev},
     {:earmark, ">= 0.0.0", only: :dev}]
  end

  defp package do
    [maintainers: ["Sean Callan"],
     files: ["lib", "priv", "mix.exs", "README*", "LICENSE*"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/slime-lang/phoenix_slime"}]
  end
end
