defmodule Scope do
  
  def set(some_arg // "nothing") do
    the_arg? = some_arg
  end

# THIS WOULD happen for get()
 # == Compilation error on file ./var_scope.ex ==
 # (CompileError) var_scope.ex:3: cannot invoke local some_arg/1 inside match
  #  (stdlib) lists.erl:1352: :lists.mapfoldl/3
  #  (elixir) src/elixir_clauses.erl:26: :elixir_clauses.match/3
  #  (elixir) src/elixir_clauses.erl:35: :elixir_clauses.clause/7
  #  (elixir) src/elixir_def.erl:173: :elixir_def.translate_clause/7
  #  (elixir) src/elixir_def.erl:163: :elixir_def.translate_definition/7
  #  (elixir) src/elixir_def.erl:77: :elixir_def.store_definition/9
  #  var_scope.ex:3: (module)  
  #def get() do
  #  IO.puts "This won't find the local variable #{the_arg}"
  #end 
  
end
