defmodule Procs do

  def greeter(what_to_say) do
    receive do
      msg ->
        IO.puts "#{what_to_say}: #{inspect msg}"
    end
    greeter(what_to_say)
  end
end
