defmodule Procs do

  def greeter(count) do
    receive do
      { :reset } ->
        greeter(count = 0)
      { :add, n } ->
        greeter(count+n)
      msg ->
        IO.puts "#{count}: Hello #{inspect msg}"
        greeter(count)
    end
  end
end
