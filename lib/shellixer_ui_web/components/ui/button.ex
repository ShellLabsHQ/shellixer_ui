defmodule ShellixerUiWeb.Ui.Button do
  use Phoenix.Component

  attr :class, :string, default: ""
  attr :rest, :global
  slot :inner_block, required: true

  def button_shx(assigns) do
    ~H"""
    <button class={"btn #{@class}"} {@rest}>
      <%= render_slot(@inner_block) %>
    </button>
    """
  end
end
