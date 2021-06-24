add to inline elements
addReferenceAndParseEmphasisFrom: aMatcher with: aReferenceType

	| reference parserForReferenceChildren |
	reference := aReferenceType new
		path: (aMatcher subexpressions: 3) first;
		yourself.
	parserForReferenceChildren := MarkdownInlineParser new.
	reference children addAll: (parserForReferenceChildren parse: (aMatcher subexpressions: 2) first).
	^ reference