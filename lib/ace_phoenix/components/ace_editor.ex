defmodule AcePhoenix.Components.AceEditor do
  use Phoenix.Component

  attr :id, :string, required: true
  attr :content, :string, default: ""
  attr :mode, :string, default: "elixir"
  attr :theme, :string, default: "monokai"
  attr :min_lines, :integer, default: 10
  attr :max_lines, :integer, default: 30

  def render(assigns) do
    ~H"""
    <div id={@id} phx-update="ignore" phx-hook="AceEditor" style="height: 300px;"
         data-mode={@mode} data-theme={@theme} data-min-lines={@min_lines} data-max-lines={@max_lines}>
      <%= @content %>
    </div>
    """
  end
end
