styling
completeTextElementFrom: aText

	"(self endPosition - self startPosition + 1) = aText size
		ifFalse: [self halt. 
				^ aText, ' ' asText]."
	^ aText