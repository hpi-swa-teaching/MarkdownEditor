helper
insert: aCharacter at: aPosition in: aText
	
	aPosition = 0
		ifTrue: [^ aCharacter asText, aText].
	aPosition >= aText size
		ifTrue: [^ aText, aCharacter asText].
	^ (aText copyFrom: 1 to: aPosition),
		aCharacter asText,
		(aText copyFrom: aPosition + 1 to: aText size)