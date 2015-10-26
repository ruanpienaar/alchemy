defmodule MyError do
	defexception message: "Default Message"

    def error(reason, message) do
        IO.puts message
        raise MyError, message: reason
    end

    def error(reason) do
        raise MyError, message: reason
    end

    def error do
        raise MyError
    end

end
