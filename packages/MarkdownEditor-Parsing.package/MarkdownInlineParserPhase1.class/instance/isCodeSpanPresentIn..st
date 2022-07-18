helpers - reference
isCodeSpanPresentIn: aRawString

	| matcher anotherMatcher |
	matcher := RxMatcher forString: '\[(.*)\]\((.*)\).*'.
	anotherMatcher := RxMatcher forString: '\[(.*`.*`.*)\]\((.*)\).*'.
	^ ((matcher matches: aRawString) 
		and: [((matcher subexpression: 2) asString includes: $`) 
			and: [(anotherMatcher matches: aRawString) not]])