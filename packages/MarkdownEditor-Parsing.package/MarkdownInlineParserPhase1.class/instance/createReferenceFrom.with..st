helpers - reference
createReferenceFrom: aRegexMatcher with: aReferenceType

	| reference parserForReferenceChildren |
	reference := aReferenceType new
		path: (aRegexMatcher subexpression: 3);
		yourself.
	parserForReferenceChildren := MarkdownInlineParser new.
	reference addChildrenFrom: (parserForReferenceChildren parse: (aRegexMatcher subexpression: 2)).
	^ reference