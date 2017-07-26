defmodule GallowsWeb.PageView do
  use GallowsWeb, :view

  def plural_of(word, 0), do: "No #{word}"
  def plural_of(word, 1), do: "1 #{word}"
  def plural_of(word, amount) when amount > 0, do: "#{amount} #{word}" <> "s"
  def plural_of(word, amount) when amount < 0 do
    { :safe, "<span style='color: red'>#{amount} #{word}s</span>" }
  end
end
