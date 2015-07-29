defmodule Mod do

  #function head: declaring defaults....
  def join(a, b \\ nil, sep \\ " ")
  
  def join(a, b, _sep) when is_nil(b) do
    a
  end
  
  def join (a, b, sep) do
    a <> sep <> b
  end
  
end 
