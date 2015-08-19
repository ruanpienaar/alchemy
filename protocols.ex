defprotocol Blank do
	
	@doc "True if data is blank."
	def blank?(data)
	
end

defimpl Blank, for: Integer do
	def blank?(_), do: false
end

defimpl Blank, for: List do
	def blank?([]), do: true
	def blank?(_),	do: false
end

defimpl Blank, for: Map do
  # Keep in mind we could not pattern match on %{} because
  # it matches on all maps. We can however check if the size
  # is zero (and size is a fast operation).
  def blank?(map), do: map_size(map) == 0
end

defimpl Blank, for: Atom do
	def blank?(false), do: true
	def blank?(nil),   do: true
	def blank?(_),     do: false
end

defimpl Blank, for: User do
	def blank?(user) do
		case user.created do
			nil ->
				true
			_ ->
				false
		end
	end
end
