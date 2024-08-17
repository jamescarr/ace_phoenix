# AcePhoenix

A Phoenix component for integrating the Ace code editor into your Phoenix applications.

## Installation

Add `ace_phoenix` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ace_phoenix, "~> 0.1.0"}
  ]
end
```

## Usage

1. In your `app.js`, import and set up the AceEditorHook:

```javascript
import { AceEditorHook } from "ace_phoenix";

let Hooks = {};
Hooks.AceEditor = AceEditorHook;

let liveSocket = new LiveSocket("/live", Socket, { hooks: Hooks, params: { _csrf_token: csrfToken } });
```

2. In your LiveView or component:

```elixir
import AcePhoenix.Components.AceEditor

def render(assigns) do
  ~H"""
  <.ace_editor id="my-editor" content={@content} mode="elixir" theme="monokai" />
  """
end

def handle_event("ace-change", %{"content" => content}, socket) do
  {:noreply, assign(socket, content: content)}
end
```

## License

This project is licensed under the MIT License.

