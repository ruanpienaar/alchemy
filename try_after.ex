defmodule TryAfter do
    def do_after() do
        {:ok, file} = File.open "sample", [:utf8, :write]
        try do
            IO.write file, "Ola!"
            raise "oops, some error"
        after
            #This will always happen, even after a raise in the try block
            File.close(file)
            File.rm "sample"
        end
    end
end
