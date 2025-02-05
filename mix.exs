defmodule NovelEngine.MixProject do
  use Mix.Project

  def project do
    [
      app: :novel_engine,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "A LiveView-based visual novel engine",
      package: package()
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
      {:phoenix_live_view, "~> 0.20.0"},
      {:phoenix_html, "~> 3.3"},
      {:jason, "~> 1.4"}
    ]
  end

  defp package do
    [
      maintainers: ["YOSUKE NAKAO"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/Yoosuke/novel_engine.git"},
    ]
  end
end
