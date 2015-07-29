defmodule Recurse do

  def run() do
    loop(50)
  end

  def loop(x) when x <= 0 do
    IO.puts(x)
  end
  
  def loop(x) do
    IO.puts x
    loop(x-1)
  end
  
end
