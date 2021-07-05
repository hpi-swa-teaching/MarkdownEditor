styling
completeTextElementFrom: aText

	(self endPosition - self startPosition) = aText size
		ifFalse: [self halt.^ aText, ' ' asText].
	^ aText