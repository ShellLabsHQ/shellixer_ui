defmodule ShellixerUiWeb.Ui.AvatarGroup do


  use Phoenix.Component
  alias ShellixerUiWeb.Ui.Avator


  @doc """
  Renders an Avatar Group component.

  ## Examples

      <.avatar_group avatars={[
        %{src: "https://example.com/avatar1.png"},
        %{src: "https://example.com/avatar2.png"},
        %{placeholder: "AB"},
        %{count: "+5"}
      ]} />
  """

  def avatar_shx_group(assigns) do
    assigns =
      assigns
      |> assign_new(:avatars, fn -> [] end)
      |> assign_new(:class, fn -> "-space-x-4" end)

    ~H"""
    <div class={"avatar-group #{@class}"}>
      <%= for avatar <- @avatars do %>
        <%= if Map.has_key?(avatar, :count) do %>
          <div class="avatar avatar-placeholder">
            <div class="bg-neutral text-neutral-content w-12 rounded-full">
              <span><%= avatar.count %></span>
            </div>
          </div>
        <% else %>
          <Avator.avatar_shx src={avatar.src} placeholder={avatar.placeholder} class="w-12 h-12" />
        <% end %>
      <% end %>
    </div>
    """
  end

end
