defmodule ShellixerUiWeb.Ui.Button do
  use Phoenix.Component

  attr :class, :string, default: ""
  attr :rest, :global

  def button(assigns) do
    ~H"""
    <button class={"" <> @class} {@rest}>
      <%= render_slot(@inner_block) %>
    </button>
    """
  end


end
