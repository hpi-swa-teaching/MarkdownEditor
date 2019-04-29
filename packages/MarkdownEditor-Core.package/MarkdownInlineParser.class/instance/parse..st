parsing
parse: aString

	| stream tokens |
	tokens := OrderedCollection new.
	stream := ReadStream on: aString.
	[stream atEnd not] whileTrue: [	
		tokens addLast: (self nextTokenFor: stream)].
	^ self attributesFromTokens: tokens