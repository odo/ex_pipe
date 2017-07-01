defmodule ExPipe do

  def main([command]) do
    get("", command)
  end

  def get(input, command) do
    case :io.get_chars('', 8192) do
      :eof ->
        reply =
        Code.eval_string(
          "input |> " <>  command,
          [input: input]
        )
        |> elem(0)
        case is_binary(reply) do
          true  -> IO.puts(reply)
          false -> IO.inspect(reply)
        end
        :init.stop
      text ->
        get(text <> input, command)
      end
    end


end
