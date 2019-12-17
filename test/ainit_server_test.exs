defmodule AinitServerTest do
  use ExUnit.Case
  doctest AinitServer

  test "greets the world" do
    assert AinitServer.hello() == :world
  end
end
