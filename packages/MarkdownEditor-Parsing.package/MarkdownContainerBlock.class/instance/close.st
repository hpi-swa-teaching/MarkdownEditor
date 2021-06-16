accessing
close

	self beClosed.
	self children do: [:child | child close]