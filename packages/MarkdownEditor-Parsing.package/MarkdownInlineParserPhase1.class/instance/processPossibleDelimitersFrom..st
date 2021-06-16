parsing
processPossibleDelimitersFrom: aRawString 

	| currentDelimiter noDelimiter |
	
	(self previousChar matchesRegex: '\s')
		ifTrue: [(aRawString matchesRegex: '^(\**\s).*')
			ifTrue: [
				noDelimiter := aRawString allRegexMatches: '^\**\s'.
				self addStringFrom: noDelimiter first.
				((noDelimiter first size + 1) > (aRawString size - 1))
					ifTrue: [^ ''].
				^ aRawString copyFrom: noDelimiter first size + 1 to: aRawString size - 1
			].
		].
	
	currentDelimiter := aRawString allRegexMatches: '^\**.'.
	self addDelimiterFrom: self previousChar, currentDelimiter first.
		
	^ aRawString copyFrom: currentDelimiter first size to: aRawString size - 1