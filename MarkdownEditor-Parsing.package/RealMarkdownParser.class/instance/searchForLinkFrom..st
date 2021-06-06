parsing - inline
searchForLinkFrom: aPosition

	| matcher substring |
	matcher := RxMatcher forString: '(\([^\)]*\)).*'.
	substring := inlineText copyFrom: aPosition to: inlineText size .
	(matcher matches: substring)
		ifTrue: [matcher subexpression: 2]