defmodule KV do
    def start_link do
        Task.start_link(fn -> loop(%{}) end)
    end

    def put(pid, k, v) do
        send pid, {:put, k, v, self}
    end

    def get(pid, k) do
        send pid, {:get, k, self}
    end

    defp loop(map) do
        receive do
            {:put, k, v, caller} ->#
                send caller, :ok
                loop(Map.put(map, k, v))
            {:get, k, caller} ->
                send caller, Map.get(map, k)
                loop(map)
        end
    end

end