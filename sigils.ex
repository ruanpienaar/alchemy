defmodule Sigils do
  def regexp() do
    regexp = ~r/foo|bar/
    
    IO.puts "regexp: ~r/foo|bar/"
    
    IO.puts "foo?"
    IO.puts "foo" =~ regexp
    
    IO.puts "bar?"
    IO.puts "bar" =~ regexp
    
    IO.puts "crap?"
    IO.puts "crap" =~ regexp
  end
end
