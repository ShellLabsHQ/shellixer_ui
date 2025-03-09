defmodule ShellixerUiWeb.HomeController do
  use ShellixerUiWeb, :controller

  def home(conn, _params) do
    render(conn, :home, layout: false)
  end

end
