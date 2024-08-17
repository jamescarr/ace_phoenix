defmodule AceComponent.MixProject do
  use Mix.Project

  def project do
    [
      app: :ace_phoenix,
      version: "0.1.1",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: "A phoenix component for the Ace code editor",
      assets_path: "priv/static"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix_live_view, "~> 0.18.0"},
      {:ex_doc, "~> 0.27", only: :dev, runtime: false}
    ]
  end
defp package do
    [
      maintainers: ["James Carr"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/jamescarr/ace_phoenix"},
      files: ~w(lib priv .formatter.exs mix.exs README.md LICENSE)
    ]
  end
end
