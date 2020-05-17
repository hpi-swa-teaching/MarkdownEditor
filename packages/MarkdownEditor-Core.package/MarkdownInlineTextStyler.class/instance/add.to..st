styling
add: aCollectionOfMarkdownEmphases to: aText

	aCollectionOfMarkdownEmphases do: [:emphasis |
		aText
			addAttribute: emphasis textAttribute
			from: emphasis startPosition
			to: emphasis endPosition.
		
		aText
			addAttribute: emphasis colorAttribute
			from: emphasis startPosition
			to: emphasis endPosition]