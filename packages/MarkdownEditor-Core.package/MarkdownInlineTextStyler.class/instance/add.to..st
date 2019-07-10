styling
add: aCollectionOfMarkdownAttributes to: aText

	aCollectionOfMarkdownAttributes do: [:attribute |
		aText 
			addAttribute: attribute textAttribute 
			from: attribute startPosition 
			to: attribute endPosition]