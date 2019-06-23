parsing
add: aCollectionOfMarkdownAttributes to: aText

	aCollectionOfMarkdownAttributes do: [:attribute |
		attribute textAttributes do: [:textAttribute |
			aText 
				addAttribute: textAttribute 
				from: attribute startPosition 
				to: attribute endPosition]]