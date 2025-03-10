defmodule ShellixerUI.Components do

  defmacro __using__(_) do
    quote do
        import ShellixerUiWeb.Ui.Button
        import ShellixerUiWeb.Ui.Accordion
        import ShellixerUiWeb.Ui.Avator
        import ShellixerUiWeb.Ui.AvatarGroup


    end
  end

end
