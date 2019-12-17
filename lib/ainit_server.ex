defmodule AinitServer do

  defmacro __using__(_opts \\ []) do
    quote do
      @behaviour unquote(__MODULE__)
      use GenServer

      def init(arg) do
        {:ok, arg, {:continue, :ainit_server_init}}
      end

      def handle_continue(:ainit_server_init, arg) do
        {:ok, state} = ainit(arg)
        {:noreply, state}
      end
    end
  end

  @callback ainit(any()) :: {:ok, any()}

end
