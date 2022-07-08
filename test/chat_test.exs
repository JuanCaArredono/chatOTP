defmodule ChatTest do
  use ExUnit.Case
  doctest Chat

  defmodule ChatTest do
    use ExUnit.Case, async: true
    doctest Chat

    test "send_message1" do
      assert Chat.send_message(:moebi@localhost, "hi") == :ok
    end

    @tag :distributed
    test "send_message2" do
      assert Chat.send_message(:moebi@localhost, "hi") == :ok
    end
  end
end
