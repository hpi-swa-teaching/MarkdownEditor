replacing
unescape: characters in: aString
	
	| result |
	result := ''.
	aString withIndexDo: [:char :index | 
		(char = $\ and: [characters includes: (aString at: index + 1 ifAbsent: [''])]) 
			ifFalse: [result := result, char]].
	^ result