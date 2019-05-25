parsing
parse: aString

	aString lineIndicesDo: [:start :endWithoutDelimiters :end |
		| line |
		line := aString copyFrom: start to: end.
		self blocks add: (self findBlockFor: line)].
	^ self blocks inject: Text new into: [:text :block | text append: block asText]
