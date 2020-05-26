styling
add: aCollectionOfMarkdownInlineElements to: aText

	aCollectionOfMarkdownInlineElements do: [:element |
		aText
			addAttribute: element textAttribute
			from: element startPosition
			to: element endPosition.
		
		aText
			addAttribute: element colorAttribute
			from: element startPosition
			to: element endPosition]