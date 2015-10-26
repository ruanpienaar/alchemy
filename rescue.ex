defmodule Rescue do
    def sos() do
        try do
            raise "oops"
        rescue 
            e in RuntimeError -> e
        end
    end
end