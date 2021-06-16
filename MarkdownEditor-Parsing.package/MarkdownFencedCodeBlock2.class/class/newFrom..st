as yet unclassified
newFrom: aString
	
	| matcher |
	matcher := (self backticksMatchFor: aString) ifNil: [self tildesMatchFor: aString].
	matcher
		ifNotNil: [^self new
				indention: ((matcher subexpressions: 2) first size);
				openingFence: ((matcher subexpressions: 3) first);
				infoString: ((matcher subexpressions: 4) at: 1 ifAbsent: ['']);
				yourself].
	^ nil