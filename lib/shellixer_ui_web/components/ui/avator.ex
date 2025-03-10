defmodule ShellixerUiWeb.Ui.Avator do
  use Phoenix.Component


  attr :src, :string, default: nil, doc: "Image source URL"
  attr :placeholder, :string, default: nil, doc: "Text to display if no image is provided"
  attr :class, :string, default: "", doc: "Additional CSS classes"
  attr :ring_color, :string, default: "ring-primary ring-offset-base-100", doc: "Ring color styles"
  attr :status, :string, default: nil, values: ["online", "offline", nil], doc: "Status indicator"

  def avatar_shx(assigns) do
    assigns =
      assigns
      |> assign(:status_class, get_status_class(assigns.status))

    ~H"""
    <div class={"avatar #{@status_class} #{@class}"}>
      <div class={"rounded-full ring #{@ring_color}"}>
        <%= if @src do %>
          <img src={@src} />
        <% else %>
          <div class="bg-neutral text-neutral-content flex items-center justify-center w-full h-full">
            <span><%= @placeholder %></span>
          </div>
        <% end %>
      </div>
    </div>
    """
  end

  defp get_status_class("online"), do: "avatar-online"
  defp get_status_class("offline"), do: "avatar-offline"
  defp get_status_class(_), do: ""

end
