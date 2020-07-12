replacing
replaceFrom: aStart to: aStop in: aString with: aReplacement
	
	(aStart > 0 and: [aStop <= aString size]) 
		ifTrue: [ ^ (aString copyFrom: 1 to: aStart - 1), aReplacement, (aString copyFrom: aStop + 1 to: aString size) ]
		ifFalse: [ ^ aString ]