#defmodule MyModule do
#	def if(:false, _), do: false
#	def if(:true, otherwise), do: otherwise
#
#	def test(x, y), do: x/y
#end

if_else = 
fn
	(nil, _, alt) -> alt
	(false, _, alt) -> alt
	(_ , cons, _) -> cons
end

if_else_lazy = &(if_else.(&1, &2, &3).())