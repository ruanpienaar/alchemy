defmodule Procs do
  def s() do
    pid1 = spawn &p/0
    pid2 = spawn &p/0

    IO.inspect pid1
    IO.puts "PID1^"
    IO.inspect pid2
    IO.puts "PID2^"

    IO.puts "PID2 starts talking to PID1"
    send pid2, {:hello, pid1}
    
    # And true for the opposite:
    # pid3 = spawn &p/0
    # pid4 = spawn &p/0

    # IO.inspect pid3
    # IO.puts "PID3^"
    # IO.inspect pid4
    # IO.puts "PID4^"

    # IO.puts "PID1 starts talking to PID2"
    # send pid3, {:hello, pid4}
    
    # IO.puts Process.alive?(pid1)
    # IO.puts Process.alive?(pid2)
    # IO.puts Process.alive?(pid3)
    # IO.puts Process.alive?(pid4)

  end
  
  defp p() do
    receive do
      {:hello, remotepid} ->
      	IO.inspect self
      	IO.puts "Got hello"
      	send remotepid, {:how_are_you, self}
      	p()
      {:how_are_you, remotepid} ->
      	IO.inspect self
      	IO.puts "Got how are you?"
      	send remotepid, {:good_thanks_and_you, self}
      	p()
      {:good_thanks_and_you, remotepid} ->
      	IO.inspect self
      	IO.puts "Got good thanks and you?"
      	send remotepid, {:ok_bye, self}
      	p()
      {:ok_bye, remotepid} ->
      	IO.inspect self
      	IO.puts "Got ok bye!"
      	send remotepid, {:ok_bye, self}
    end
  end
  
end
