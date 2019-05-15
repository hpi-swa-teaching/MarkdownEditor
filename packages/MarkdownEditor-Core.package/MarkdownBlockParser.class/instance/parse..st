parsing
parse: aString

	| blocks |
	blocks := OrderedCollection new.
	aString lineIndicesDo: [:start :endWithoutDelimiters :end |
		| line |
		line := aString copyFrom: start to: end.
		blocks add: (self findBlockFor: line)].
	^ blocks inject: Text new into: [:text :block | text append: block asText]
