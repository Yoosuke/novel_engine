defmodule NovelEngine.MixProject do
  use Mix.Project

  def project do
    [
      app: :novel_engine,
      version: "0.0.1",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      desciption: "A novel engine for creating and playing text-based games.",
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
      {:phoenix_live_view, "~> 1.0.0-rc.1", override: true},
      {:phoenix_html, "~> 4.1"},
      {:jason, "~> 1.2"}
    ]
  end

  defp package do
    [
      name: "novel_engine",
      files: ["lib", "mix.exs", "mix.lock", "README.md"],
      maintainers: ["YOSUKE NAKAO"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/Yoosuke/novel_engine.git"},
      deps: deps()
    ]
  end
end
