accessing
addTo: aText

	aText
			addAttribute: self textAttribute
			from: self startPosition
			to: self endPosition.
		
	aText
			addAttribute: self colorAttribute
			from: self startPosition
			to: self endPosition