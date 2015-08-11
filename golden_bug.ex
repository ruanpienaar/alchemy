defmodule Golden_bug do
    def run do
        string = "53‡‡†305))6*;4826)4‡.)4‡);806*;48†8¶60))85;;]8*;:‡*8†83(88)5*†;46(;88*96*?;8)*‡(;485);5*†2:*‡(;4956*2(5*—4)8¶8*;4069285);)6†8)4‡‡;1(‡9;48081;8:8‡1;48†85;4)485†528806*81(‡9;48;(88;4(‡?34;48)4‡;161;:188;‡?;"
        get_char_frequency string
    end

    defp get_char_frequency(str) do
        walk_str str, []
    end

    defp walk_str(<<>>, props) do
        List.keysort(props, 1)
    end

    defp walk_str(<< h, t :: binary >>, props) do
        IO.puts h
        walk_str(t, Keyword.merge(props, [{List.to_atom([h]), 1}], fn (_k, v1, v2) -> v1 + v2 end))
    end
end