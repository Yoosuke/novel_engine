defmodule NovelEngine.MarkdownParser do
  def parse(markdown) do
    Earmark.as_html!(markdown)
  end
end
