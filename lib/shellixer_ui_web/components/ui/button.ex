defmodule ShellixerUiWeb.Button do
  use Phoenix.Component

  attr :class, :string, default: "btn"
  attr :rest, :global

  slot :inner_block, required: true

  def button_shx(assigns) do
    ~H"""
    <button class={@class} {@rest}>
      <%= render_slot(@inner_block) %>
    </button>
    """
  end
end
