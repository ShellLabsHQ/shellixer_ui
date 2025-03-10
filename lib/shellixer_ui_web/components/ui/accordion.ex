defmodule ShellixerUiWeb.Ui.Accordion do

  use Phoenix.Component

  attr :class, :string, default: ""
  attr :open, :boolean, default: false
  attr :group, :string, default: nil
  attr :icon, :string, default: "arrow" # Can be "arrow" or "plus"
  attr :join, :boolean, default: false
  attr :bordered, :boolean, default: true
  attr :bg, :string, default: "base-100"
  slot :title, required: true
  slot :content, required: true

  def accordion_shx(assigns) do
    ~H"""
    <div class={
      "collapse bg-#{@bg} #{border_class(@bordered)} #{icon_class(@icon)} #{@join && "join-item"} #{@class}"
    }>
      <input type={@group && "radio" || "checkbox"} name={@group} checked={@open} />

      <div class="collapse-title font-semibold">
        <%= render_slot(@title) %>
      </div>

      <div class="collapse-content text-sm">
        <%= render_slot(@content) %>
      </div>
    </div>
    """
  end

  defp border_class(true), do: "border border-base-300"
  defp border_class(false), do: ""

  defp icon_class("arrow"), do: "collapse-arrow"
  defp icon_class("plus"), do: "collapse-plus"
  defp icon_class(_), do: ""

end
