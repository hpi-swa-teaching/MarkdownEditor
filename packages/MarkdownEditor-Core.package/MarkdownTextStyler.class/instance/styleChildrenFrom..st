styling
styleChildrenFrom: aMarkdownContainer

	aMarkdownContainer children 
		do: [:child | child applyStylingWith: self]
	