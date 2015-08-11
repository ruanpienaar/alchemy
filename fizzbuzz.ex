defmodule FizzBuzz do  
  def check() do
    check(1)
  end
  
  defp check(num) when num > 100 do
    :ok
  end
  
  defp check(num) do
    cond do
    	remnum(num, 5) && remnum(num, 3) ->
    	  IO.puts "FizzBuzz"
    	remnum(num, 3) ->
    	  IO.puts "Fizz"
    	remnum(num, 5) ->
    	  IO.puts "Buzz"
    	true ->
    	  IO.puts num
    end
    check(num+1)
  end

  defp remnum(num, remnum) do
    #IO.puts "checking num: #{num} against #{remnum}"
    case rem(num, remnum) do
      0 -> 
        true
      _ ->
        false
    end
  end

end

#IO.puts FizzBuzz.check