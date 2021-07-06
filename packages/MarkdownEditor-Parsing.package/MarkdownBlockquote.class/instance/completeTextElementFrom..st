styling
completeTextElementFrom: aText
	
	aText isEmpty
		ifTrue: [(self endPosition - self startPosition + 1) = 1
					ifTrue: [^ '>' asText] 
					ifFalse: [^ '> ' asText]].
	^ '> ' asText, aText