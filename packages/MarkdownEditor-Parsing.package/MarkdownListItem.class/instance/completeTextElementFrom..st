styling
completeTextElementFrom: aText

	aText isEmpty
		ifTrue: [(self endPosition - self startPosition + 1) = 1
					ifTrue: [^ self listMarker asText]
					ifFalse: [^ (self listMarker, ' ') asText]].
	^ (self listMarker, ' ') asText, aText