defmodule DefaultTest do
  def doit(arg \\ IO.puts "No arguments given...") do
  	arg
  end
end
IO.puts DefaultTest.doit
IO.puts DefaultTest.doit "Argument given"