defmodule User do

    defstruct name: "Ruan", age: 27, created: nil

    def print() do
        IO.puts %User{}
    end

    def new() do
        %User{}
    end

    def new(name) do
        %User{name: name}
    end

    def new(name, age) do
        %User{name: name, age: age}
    end
    
    def new(name, age, created) do
    	%User{name: name, age: age, created: created}
    end

end
