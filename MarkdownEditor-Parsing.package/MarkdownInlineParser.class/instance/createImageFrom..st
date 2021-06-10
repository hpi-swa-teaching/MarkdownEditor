parsing - inline
createImageFrom: aString

	| matcher image |
	matcher := RxMatcher forString: '\[(.*)\]\((.*)\)'.
	(matcher matches: aString)
		ifTrue: [image := MarkdownImage new
				path: (matcher subexpressions: 3) first;
				yourself.
				image children add: (self processEmphasisFor: (matcher subexpressions: 2) first).
				^ image]