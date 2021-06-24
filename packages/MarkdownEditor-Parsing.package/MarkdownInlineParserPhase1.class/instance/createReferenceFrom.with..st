helpers - reference
createReferenceFrom: aRegexMatcher with: aReferenceType

	| reference parserForReferenceChildren |
	reference := aReferenceType new
		path: (aRegexMatcher subexpressions: 3) first;
		yourself.
	parserForReferenceChildren := MarkdownInlineParser new.
	reference addChildrenFrom: (parserForReferenceChildren parse: (aRegexMatcher subexpressions: 2) first).
	^ reference