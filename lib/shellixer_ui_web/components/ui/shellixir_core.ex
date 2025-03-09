defmodule ShellixerUI.Components do

  defmacro __using__(_) do
    quote do
        import ShellixerUiWeb.Button
        import ShellixerUiWeb.Accordion
    end
  end

end
