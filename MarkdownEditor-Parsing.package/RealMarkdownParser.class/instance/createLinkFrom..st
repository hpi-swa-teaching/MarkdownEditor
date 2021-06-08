parsing - inline
createLinkFrom: aString

	| matcher link |
	matcher := RxMatcher forString: '\[([^\]]*)\]\(([^\)]*)\)'.
	(matcher matches: aString)
		ifTrue: [link := MarkdownLink2 new
				url: (matcher subexpressions: 3) first;
				yourself.
				link children add: (self processEmphasisFor: (matcher subexpressions: 2)).
				^ link]