parsing
createLines: aString
	
	| lines |
	lines := OrderedCollection new.
	aString lineIndicesDo: [:start :endWithoutDelimiters :end | 
		lines add: (aString copyFrom: start to: end)].
	^ lines