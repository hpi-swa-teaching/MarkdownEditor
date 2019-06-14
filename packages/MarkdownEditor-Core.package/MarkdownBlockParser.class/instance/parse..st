parsing
parse: aStringOrText
	
	| stringToParse |
	self clean.
	stringToParse := aStringOrText asString.
	stringToParse lineIndicesDo: [:start :endWithoutDelimiters :end | | line |
		line := stringToParse copyFrom: start to: end.
		self processLine: line].
	^ self blocks inject: Text new into: [:text :block | text append: block asText]
