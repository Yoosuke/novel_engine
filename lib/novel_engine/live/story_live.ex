defmodule NovelEngine.Live.StoryLive do
  use Phoenix.LiveView
  alias NovelEngine.MarkdownParser

  @sample_story """
  # ノベルゲームへようこそ
  これは *LiveView* を使ったインタラクティブなノベルゲームです。
  - 選択肢1
  - 選択肢2
  """

  def mount(_params, _session, socket) do
    html_content = MarkdownParser.parse(@sample_story)
    {:ok, assign(socket, story: html_content)}
  end

  def render(assigns) do
    ~H"""
    <div class="story-content">
      <%= raw @story %>
    </div>
    """
  end
end
