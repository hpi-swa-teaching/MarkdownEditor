helpers - reference
createReferenceFrom: aRegexMatcher with: aReferenceType

	| reference parserForReferenceChildren |
	reference := aReferenceType new
		path: (aRegexMatcher subexpression: 3);
		yourself.
	parserForReferenceChildren := MarkdownParser new.
	reference addChildrenFrom: (parserForReferenceChildren parseInline: (aRegexMatcher subexpression: 2)).
	^ reference