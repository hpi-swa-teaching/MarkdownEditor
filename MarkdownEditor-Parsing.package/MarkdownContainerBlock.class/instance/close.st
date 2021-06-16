accessing
close

	self isOpen: false.
	self children do: [:child | child close]. 