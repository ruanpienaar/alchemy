defmodule Generators do

    def seq(max) do
        for n <- 1..max, do: n
    end

    def even_seq(max) do
        even = fn x -> 0 == rem x, 2 end
        for n <- 1..max, even.(n) , do: n
    end

    def double(numlist) do
        for n <- numlist, do: n * 2
    end

    def isdir(dirs) do
        for dir  <- dirs,
            file <- File.ls!(dir),
            path = Path.join(dir, file),
            File.regular?(path) do
          File.stat!(path).size
        end
    end

    def bitstring() do
        pixels = <<213, 45, 132, 64, 76, 32, 76, 0, 0, 234, 32, 15>>
        for <<r::8, g::8, b::8 <- pixels>>, do: {r, g, b}
    end

end