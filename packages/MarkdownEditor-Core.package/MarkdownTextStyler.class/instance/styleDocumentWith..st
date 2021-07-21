styling
styleDocumentWith: aMarkdownContainer

	aMarkdownContainer children 
		do: [:child |child applyStylingWith: self]