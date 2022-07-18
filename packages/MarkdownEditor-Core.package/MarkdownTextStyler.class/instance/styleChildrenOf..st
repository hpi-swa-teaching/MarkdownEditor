styling
styleChildrenOf: aMarkdownContainer

	aMarkdownContainer children 
		do: [:child | child applyStylingWith: self]
	