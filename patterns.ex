defmodule Patterns do
  def swap({a, b}), do: {b, a}

  def equal(a, a), do: true
  def equal(_, _), do: false
end
